#!/usr/bin/env python3
"""Sync a BuildStream store with the Dakota store on the Pi, incrementally.

Why this exists
---------------
GitHub's actions/cache caps a repo at 10 GB and evicts on idle; this project's
store is 26-28 GB, so nothing accumulated across runs (R-CI-4, R-CI-6). The
store now lives on the Pi and is reached over the tailnet.

Why per-path and not one tarball
--------------------------------
The store is content-addressed, so a file's path is a function of its content:
unchanged content keeps its path. Asking the store what it already holds and
sending only the difference is therefore correct by construction, whereas a
tarball of 26-28 GB per run is both slow and the disk exhaustion that has already
cost this pipeline runs.

Usage
-----
  bst-store-sync.py pull --store http://100.99.220.10:11001 --dir ~/.cache/buildstream
  bst-store-sync.py push --store http://100.99.220.10:11001 --dir ~/.cache/buildstream

Exit status is non-zero if anything failed, because the workflow's verify step
keys off it: a run that compiled for hours must not report a green save when the
store did not actually land.

Deliberately dependency-free (stdlib only) so it runs on a stock runner.
"""

import argparse
import concurrent.futures
import http.client
import json
import os
import sys
import threading
import urllib.parse

DEFAULT_PARTS = ("cas", "artifacts", "sources")


def endpoint(store):
    parts = urllib.parse.urlsplit(store)
    if parts.scheme != "http" or not parts.hostname:
        sys.exit(f"store must be an http:// URL, got {store!r}")
    return parts.hostname, parts.port or 80


def inventory(host, port, prefix, timeout=300):
    """What does the store already hold under this prefix? path -> bytes."""
    conn = http.client.HTTPConnection(host, port, timeout=timeout)
    conn.request("GET", "/tree?prefix=" + urllib.parse.quote(prefix))
    response = conn.getresponse()
    body = response.read()
    conn.close()
    if response.status != 200:
        raise RuntimeError(f"inventory {prefix!r}: HTTP {response.status} {body[:200]!r}")
    return {entry["path"]: entry["bytes"] for entry in json.loads(body)}


def local_manifest(root, parts):
    """Everything we have locally that could be worth keeping. path -> bytes."""
    found = {}
    for part in parts:
        base = os.path.join(root, part)
        for dirpath, _dirnames, filenames in os.walk(base):
            for name in filenames:
                full = os.path.join(dirpath, name)
                rel = os.path.relpath(full, root)
                try:
                    found[rel] = os.path.getsize(full)
                except OSError:
                    pass
    return found


_LOCAL = threading.local()


def connection(host, port, timeout):
    """Per-thread keep-alive connection.

    The store speaks HTTP/1.1 (server.py sets protocol_version) and sets
    Content-Length on every response, so a connection can serve many objects.
    Opening one per object cost the pipeline hours: a 113-minute restore and a
    save that never finished inside the job's 6-hour cap, which is what left
    the Pi holding cas/ blobs but zero artifacts/refs.
    """
    conn = getattr(_LOCAL, "conn", None)
    if conn is None:
        conn = http.client.HTTPConnection(host, port, timeout=timeout)
        _LOCAL.conn = conn
    return conn


def drop_connection():
    conn = getattr(_LOCAL, "conn", None)
    if conn is not None:
        try:
            conn.close()
        except Exception:  # noqa: BLE001
            pass
        _LOCAL.conn = None


def fetch(host, port, root, rel, expected, retries=2):
    dest = os.path.join(root, rel)
    os.makedirs(os.path.dirname(dest), exist_ok=True)
    tmp = dest + ".part"
    for attempt in range(retries + 1):
        try:
            conn = connection(host, port, 900)
            conn.request("GET", "/tree/" + urllib.parse.quote(rel))
            response = conn.getresponse()
            if response.status != 200:
                response.read()
                drop_connection()
                raise RuntimeError(f"HTTP {response.status}")
            written = 0
            with open(tmp, "wb") as handle:
                while True:
                    chunk = response.read(1 << 20)
                    if not chunk:
                        break
                    handle.write(chunk)
                    written += len(chunk)
            if expected is not None and written != expected:
                raise RuntimeError(f"size mismatch: got {written}, store says {expected}")
            os.replace(tmp, dest)
            return rel, written, None
        except Exception as exc:  # noqa: BLE001 - reported, not swallowed
            drop_connection()
            if os.path.exists(tmp):
                os.unlink(tmp)
            if attempt == retries:
                return rel, 0, f"{type(exc).__name__}: {exc}"
    return rel, 0, "unreachable"


def send(host, port, root, rel, size, retries=2):
    src = os.path.join(root, rel)
    for attempt in range(retries + 1):
        try:
            conn = connection(host, port, 1800)
            conn.putrequest("PUT", "/tree/" + urllib.parse.quote(rel))
            conn.putheader("Content-Length", str(size))
            conn.putheader("Content-Type", "application/octet-stream")
            conn.endheaders()
            remaining = size
            with open(src, "rb") as handle:
                while remaining > 0:
                    chunk = handle.read(min(1 << 20, remaining))
                    if not chunk:
                        break
                    conn.send(chunk)
                    remaining -= len(chunk)
            response = conn.getresponse()
            body = response.read()
            if response.status != 201:
                drop_connection()
                raise RuntimeError(f"HTTP {response.status} {body[:120]!r}")
            return rel, size, None
        except Exception as exc:  # noqa: BLE001
            drop_connection()
            if attempt == retries:
                return rel, 0, f"{type(exc).__name__}: {exc}"
    return rel, 0, "unreachable"


def human(n):
    value = float(n)
    for unit in ("B", "KiB", "MiB", "GiB", "TiB"):
        if value < 1024 or unit == "TiB":
            return f"{int(value)} B" if unit == "B" else f"{value:.1f} {unit}"
        value /= 1024.0
    return f"{value} B"


def transfer(work, jobs, label):
    """work maps rel -> (callable, args). Returns (count, bytes, failures)."""
    done = 0
    moved = 0
    failures = []

    def invoke(item):
        rel, (fn, args) = item
        return fn(*args)

    with concurrent.futures.ThreadPoolExecutor(max_workers=jobs) as pool:
        for rel, size, error in pool.map(invoke, list(work.items())):
            done += 1
            if error:
                failures.append((rel, error))
            else:
                moved += size
            if done % 2000 == 0:
                print(f"  {label}: {done} files, {human(moved)} moved, {len(failures)} failed", flush=True)
    return done, moved, failures


def main():
    ap = argparse.ArgumentParser(
        description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter
    )
    ap.add_argument("direction", choices=("pull", "push"))
    ap.add_argument("--store", required=True, help="e.g. http://100.99.220.10:11001")
    ap.add_argument("--dir", required=True, help="BuildStream cachedir, e.g. ~/.cache/buildstream")
    ap.add_argument("--parts", default=",".join(DEFAULT_PARTS))
    # 32, not 8: the store is ~137k small objects, so throughput is dominated by
    # round-trips, not bandwidth. At 8 threads with a fresh connection per object
    # a restore took 113 minutes and a save could not finish inside the job's
    # 6-hour cap. Connections are now reused per thread (connection()), which is
    # what makes the extra workers useful.
    ap.add_argument("--jobs", type=int, default=32)
    args = ap.parse_args()

    root = os.path.expanduser(args.dir)
    parts = tuple(p.strip() for p in args.parts.split(",") if p.strip())
    host, port = endpoint(args.store)
    for part in parts:
        os.makedirs(os.path.join(root, part), exist_ok=True)

    stored = {}
    for part in parts:
        try:
            stored.update(inventory(host, port, part))
        except Exception as exc:  # noqa: BLE001
            print(f"WARNING: inventory for {part!r} failed ({exc}); treating it as empty")

    local = local_manifest(root, parts)

    if args.direction == "pull":
        todo = {rel: size for rel, size in stored.items() if local.get(rel) != size}
        print(f"pull: store holds {len(stored)} files, local has {len(local)}; {len(todo)} to fetch")
        work = {rel: (fetch, (host, port, root, rel, size)) for rel, size in todo.items()}
        label = "fetched"
    else:
        todo = {rel: size for rel, size in local.items() if stored.get(rel) != size}
        print(f"push: local has {len(local)} files, store holds {len(stored)}; {len(todo)} to send")
        work = {rel: (send, (host, port, root, rel, size)) for rel, size in todo.items()}
        label = "sent"

    if not work:
        print(f"{args.direction}: nothing to transfer - the store is already in sync")
        return 0

    done, moved, failures = transfer(work, args.jobs, label)
    print(
        f"{args.direction}: {done} files considered, {human(moved)} transferred, "
        f"{len(failures)} failed"
    )
    for rel, error in failures[:20]:
        print(f"  FAILED {rel}: {error}")
    if failures:
        print(f"::warning::{len(failures)} file(s) failed to {args.direction}")
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
