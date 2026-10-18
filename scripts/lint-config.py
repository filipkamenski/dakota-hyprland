#!/usr/bin/env python3
"""Lint the shipped Dakota Hyprland desktop configs.

Sources of truth (verified against live docs, never invented):
  layout messages : https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/
                    (message set + `swapcol`, documented via the wrap_swapcol option)
  Noctalia IPC    : https://docs.noctalia.dev/noctalia/ipc/  (`noctalia msg --help`)

Checks
  1. No hyprlang config ships. Hyprland >= 0.55 reads hyprland.lua; a stray
     hyprland.conf is a silent no-op that rots.
  2. Every hl.dsp.layout("<message>") argument is a real layout message and its
     parameters are valid for that message.
  3. No plugin-era names anywhere (layoutmsg, colleft, colright, colup, coldown,
     fitwidth, toggleoverview, scroller:*, hyprpm).
  4. noctalia msg <command> names: checked against the documented list, and
     against `noctalia msg --help` when that binary is available (authoritative).

Exit 0 = clean (warnings allowed), 1 = at least one error.
"""
from __future__ import annotations

import re
import shutil
import subprocess
import sys
from pathlib import Path

CONFIG_ROOT = Path("elements/system/files/etc/skel/.config")

# --- 1. Hyprland layout messages (wiki: Scrolling Layout) -------------------
SIMPLE = {"fit_into_view", "promote", "inhibit_scroll", "expel"}
FIT_MODES = {"active", "visible", "all", "toend", "tobeg", "expand"}
FOCUS_DIRS = {"l", "r", "u", "d", "left", "right", "up", "down"}
COL_PX = re.compile(r"^[+-]?\d+$")
COL_FLOAT = re.compile(r"^[+-]?\d*\.?\d+$")


def check_message(msg: str) -> str | None:
    """Return an error string, or None when the message is valid."""
    parts = msg.split()
    if not parts:
        return "empty layout message"
    name, args = parts[0], parts[1:]
    if name in SIMPLE:
        return None if not args else f"'{name}' takes no parameters (got {' '.join(args)})"
    if name == "move":
        if len(args) != 1:
            return "move takes exactly one argument (+col, -col or a pixel value)"
        if args[0] in {"+col", "-col"} or COL_PX.match(args[0]):
            return None
        return f"move does not accept '{args[0]}'"
    if name == "colresize":
        if len(args) != 1:
            return "colresize takes exactly one argument"
        a = args[0]
        if a in {"+conf", "-conf"} or COL_FLOAT.match(a) or re.match(r"^all \d*\.?\d+$", msg.split(None, 1)[1]):
            return None
        return f"colresize does not accept '{a}'"
    if name == "fit":
        if len(args) != 1 or args[0] not in FIT_MODES:
            return f"fit requires one of {sorted(FIT_MODES)}"
        return None
    if name == "swapcol":
        # Documented in the Scrolling Layout options table (wrap_swapcol):
        # hl.dsp.layout("swapcol l/r") wraps at either end.
        if len(args) != 1 or args[0] not in {"l", "r", "left", "right"}:
            return "swapcol requires l or r (see the wrap_swapcol option)"
        return None
    if name == "focus":
        if len(args) != 1 or args[0] not in FOCUS_DIRS:
            return f"focus requires one of {sorted(FOCUS_DIRS)}"
        return None
    return f"unknown layout message '{name}' (not in the wiki message set)"


LEGACY = [
    (r"\blayoutmsg\b", "hyprlang layoutmsg dispatch"),
    (r"\bcolleft\b|\bcolright\b|\bcolup\b|\bcoldown\b", "plugin-era column dispatch"),
    (r"\bfitwidth\b", "plugin-era fit dispatch"),
    (r"\btoggleoverview\b", "overview does not exist in the native layout"),
    (r"\bscroller:", "hyprscroller plugin syntax"),
    (r"\bhyprpm\b", "plugin manager (no plugins ship)"),
]

# --- 4. Noctalia IPC commands (docs: docs.noctalia.dev/noctalia/ipc) --------
NOCTALIA_KNOWN = {
    "panel-toggle", "settings-toggle", "dock-toggle", "window-switcher",
    "session", "volume-up", "volume-down", "volume-mute",
    "microphone-mute", "brightness-up", "brightness-down",
    "screenshot-region", "screenshot-fullscreen", "night-light-toggle",
    "config-reload", "wallpaper-next", "wallpaper-set", "theme-set",
}

errors: list[str] = []
warnings: list[str] = []


def runtime_noctalia_commands() -> set[str] | None:
    exe = shutil.which("noctalia")
    if not exe:
        return None
    try:
        out = subprocess.run([exe, "msg", "--help"], capture_output=True, text=True, timeout=20)
    except Exception:
        return None
    cmds = set(re.findall(r"\b([a-z][a-z0-9]+(?:-[a-z0-9]+)+)\b", out.stdout + out.stderr))
    return cmds or None


def main() -> int:
    if not CONFIG_ROOT.is_dir():
        print(f"error: {CONFIG_ROOT} not found (run from the repo root)", file=sys.stderr)
        return 1

    hypr = CONFIG_ROOT / "hypr"
    if (hypr / "hyprland.conf").exists():
        errors.append("hypr/hyprland.conf ships: hyprlang is deprecated (0.55+), delete it")

    lua_files = sorted(hypr.rglob("*.lua"))
    if not lua_files:
        errors.append("no hyprland.lua found — the session has no config")

    runtime_cmds = runtime_noctalia_commands()
    for f in lua_files:
        text = f.read_text(encoding="utf-8")
        for i, line in enumerate(text.splitlines(), 1):
            for m in re.finditer(r'hl\.dsp\.layout\(\s*"([^"]*)"\s*\)', line):
                err = check_message(m.group(1))
                if err:
                    errors.append(f"{f}:{i}: {err}")
            for pattern, why in LEGACY:
                if re.search(pattern, line):
                    errors.append(f"{f}:{i}: legacy {why}")
            for m in re.finditer(r"noctalia\s+msg\s+([a-z][a-z0-9-]*)", line):
                cmd = m.group(1)
                if runtime_cmds is not None:
                    if cmd not in runtime_cmds:
                        errors.append(f"{f}:{i}: 'noctalia msg {cmd}' not offered by `noctalia msg --help`")
                elif cmd not in NOCTALIA_KNOWN:
                    warnings.append(f"{f}:{i}: 'noctalia msg {cmd}' not in the documented list (verify with `noctalia msg --help`)")

    for w in warnings:
        print(f"warning: {w}")
    for e in errors:
        print(f"error: {e}")
    if lua_files:
        src = "runtime `noctalia msg --help`" if runtime_cmds is not None else "documented list"
        print(f"lint-config: {len(lua_files)} config file(s), layout messages + IPC names checked against {src}")
    return 1 if errors else 0


if __name__ == "__main__":
    sys.exit(main())
