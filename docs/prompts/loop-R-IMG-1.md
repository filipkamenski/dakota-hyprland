# Loop prompt — complete exactly one fix (R-IMG-1: single-global-libc image)

Paste everything below this line into a fresh session as the first message.
Swap `R-IMG-1` / the target block to run the loop on a different requirement.

---

Work the fix loop below **until the exit criteria are met, then stop and report.** Do not
do anything outside the target fix. Do not ask me questions you can answer by reading the
repo or running a command.

## Orientation (once, before the loop)

1. Read, in this order: `docs/REQUIREMENTS.md` (single source of truth for status),
   `docs/build-spec.md` (what must be true), then load the `dakota-hyprland-ci` skill.
2. Verify the starting state instead of trusting it:
   `git -C /opt/data/dakota-hyprland log --oneline -3`, `git status --short`,
   `git rev-parse --abbrev-ref HEAD`.
   Expected: branch `fix/ci-compose-order-and-verify`, clean tree, `origin/main` at the
   failing commit `02c8cec`. If reality differs, report the difference and stop.
3. Write one line: what is true right now about the target requirement, with the command
   that shows it.

## Target fix — R-IMG-1: the image must contain only FDS userspace

Rule: the OCI image contains exactly one userland — freedesktop-sdk 26.08.1. No second
distro, no second glibc, no second kernel tree.

Observed violation (evidence from the published image, digest `sha256:2bfa2a6b…`):

- `usr/lib/modules/` holds two trees: `5.14.0-752.el9.x86_64` **and** `7.2.2`.
- `etc/ld.so.cache` lists `/lib64/*` entries (el9 glibc 2.34) next to FDS 2.44.
- The image is built by importing an el9 bootc rootfs into the FDS rootfs
  (`.github/workflows/buildstream.yml`, step "Create Bootable bootc Image (derived)",
  ~lines 93–180, `docker import` → `docker commit`), so an entire foreign userspace
  rides along.

Exit criteria (all must hold, each with real output):

1. `usr/lib/modules/` in the image contains **exactly one** entry, and it is the FDS kernel.
2. No el9 artefact remains anywhere in the image: no `.el9` paths, no `5.14.0-752`
   module tree, no el9 `libselinux`/`libnsssysinit`-style `/lib64` entries.
3. `etc/ld.so.cache` references FDS paths only (`/usr/lib/x86_64-linux-gnu`, …).
4. `usr/lib64/ld-linux-x86-64.so.2` either does not exist or points at the FDS loader;
   `/usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2` exists.
5. No `ostree/` or `sysroot/` directory in the image tree.
6. `python3 scripts/lint-config.py` still exits 0 (no desktop regression).
7. The workflow YAML still parses, and the boot-readiness gate still runs before publish.

If the smallest correct change requires the image to be assembled by FDS `oci-builder`
instead of `docker import/commit` (R-IMG-5), that is in scope — record both rows. Qt6,
Quickshell, cliamp and any desktop work are **out of scope**; do not start them.

## The loop

Run rounds; each round is exactly these six steps, in order. Cap at 6 rounds, then stop and
report whatever state you reached.

```
ROUND n
1. STATE     — one line: what is true now + the command that shows it.
2. PLAN      — 2–5 atomic steps; one file per step; name the exact paths.
3. EXECUTE   — the smallest change that moves at least one exit criterion.
4. VERIFY    — run the check that proves step 3. Paste ACTUAL output, never a summary
               of it. If the check cannot run here, say so and say what would run it.
5. RECORD    — update the R-IMG-1 row in docs/REQUIREMENTS.md: status + evidence as a
               command (never "it worked"). Commit small: `fix(image): …`.
6. DECIDE    — all exit criteria met? → STOP and print the final report.
               Otherwise → next round, stating which criterion is still open.
```

Between rounds print only: `round n done — <criterion still open> — next: <action>`.

## Environment facts (verified — do not rediscover, do not contradict)

- Repo: `/opt/data/dakota-hyprland`. Host: Raspberry Pi 5, Ubuntu Core (snap-only), 10 GB
  RAM available, 270 GB free on `/opt/data`.
- **BuildStream is NOT installed locally** and cannot sensibly run here: element builds
  happen only in GitHub Actions. Local work = authoring, static checks, and inspecting
  already-published images.
- **No YAML parser locally** and `docker run -v /opt/data/…` fails (`mkdir /opt/data:
  read-only file system` — the daemon cannot see it). Validate YAML by piping it in:
  `cat <file> | docker run -i --rm ubuntu:24.04 bash -c 'cat > /tmp/in; apt-get update -qq
  >/dev/null; apt-get install -y -qq python3-yaml >/dev/null; python3 -c "import yaml;
  yaml.safe_load(open(\"/tmp/in\")); print(\"OK\")"'` — copy stdin to a file *before* apt,
  or apt eats the pipe.
- Inspect a published image without mounting anything:
  `docker create --name dk-inspect --entrypoint /bin/true <img>` then
  `docker export dk-inspect > /tmp/i.tar`, then `tar -tf` / `tar -xOf … | strings`.
  Pulls take ~3 min (3.2 GB); a cold CI build takes ~4.5 h, cached ~1 h.
- `docker login ghcr.io -u filipkamenski` using the token in `/opt/data/.env`
  (`grep -E '^(GITHUB_TOKEN|GH_TOKEN)=' /opt/data/.env | head -1 | cut -d= -f2-`).
  Never print, echo or commit any secret.
- CI trigger shape: workflow runs on **push to `main`** and on **PRs targeting `main`**.
  Pushing a feature branch triggers nothing; opening a PR starts a multi-hour build. So:
  do local work freely, and spend at most **one** CI run per loop, only when the local
  gates are green.
- Commit style: `<type>(<scope>): <summary>`, imperative body, no `Co-authored-by`.

## Hard rules

- Verify, never invent. Every name you type into an element or a config must come from a
  file you read or a command you ran in this session. If you cannot verify a name, stop
  and list what you could not check.
- No version bumps past `versions.yaml` pins. If a pinned component fails to build, STOP
  and report the exact error text — do not "fix" it by bumping.
- No `curl | sh` in the runtime image; everything is a BuildStream element or an explicit
  packaged file.
- Never claim CI success without a run URL plus its conclusion; never claim a build works
  because it "should".
- Never push to `main`. Work on the branch. One PR, only after local gates pass, and only
  if the loop's exit criteria require CI to be proven.
- Do not delete `docs/REQUIREMENTS.md` rows, and do not mark anything DONE without an
  evidence command that reproduces.

## Stop conditions — report instead of improvising

- A criterion needs a decision that is mine (e.g. dropping a feature, changing a pin).
- The fix turns out to require a second distro's userspace, or a component FDS does not
  ship and cannot be built in reasonable CI time.
- Two consecutive rounds end with the same criterion still open.
- You reach round 6.

## Final report format

1. **Status per exit criterion** (1–7): met / not met, each with the command and its real
   output.
2. **What changed**: files, one line each, with why.
3. **Commits**: hashes + subjects; state clearly whether anything was pushed.
4. **CI**: run id + URL + conclusion, or "no CI run spent" — never a guess.
5. **`docs/REQUIREMENTS.md` delta**: which rows moved to which status.
6. **Next requirement** you would tackle, in one line, with its blocker.
