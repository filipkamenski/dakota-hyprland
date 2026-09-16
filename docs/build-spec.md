# BUILD SPEC: Dakota Hyprland — Noctalia v5 + scrolling-layout Wayland session

## Mission
Build a complete, reproducible Hyprland-based Wayland session for the Dakota
Hyprland distro (BuildStream 2, built in GitHub Actions cloud CI) that ships:

1. **Hyprland** (recent release, ≥ 0.53) with the **native scrolling layout**
   (`general { layout = scroller }`) as the default tiling model.
2. **Noctalia Shell v5** (native runtime, NOT v4/Quickshell) as the desktop
   shell: bar, launcher, notifications, lock screen, control center, OSDs.
3. A first-boot experience where a user gets a working login (greetd +
   noctalia-greeter), a scrolling tiling desktop, and sane keybinds.

Success = on a fresh machine, the image boots to the Noctalia greeter, logs
into Hyprland, and the user can scroll horizontally through column-tiled
windows with zero manual config.

## Non-goals
- No Quickshell/noctalia-qs (v4). No GNOME session.
- Do NOT fork Noctalia — package and configure it as shipped upstream.

## Architecture constraints
- Distro builds via **BuildStream 2**; CI is **GitHub Actions**. Everything
  new must be expressible as BuildStream elements — no `curl | sh` in runtime images.
- Target runtime: x86_64 UEFI machines. Follow the existing Dakota Hyprland
  repo layout, bootc/image-based conventions, and existing element naming.
- All runtime config lives in `/usr/share/dakota/hyprland/hyprland.conf`
  (defaults copied to skel/ on first boot) — never hand-edit user $HOME in
  the image build.

## Component spec

### 1. Compositor: Hyprland + scrolling
- Pin Hyprland to the latest stable release tag ≥ 0.53 (with native scroller
  layout); record the pin in the BuildStream element (do not track git master).
- Default layout config (`/usr/share/dakota/hyprland/hyprland.conf`):
  ```conf
  general {
      layout = scroller
      gaps_in = 6
      gaps_out = 12
      border_size = 2
      col.active_border = rgba(0xcba6f7ee) rgba(0x89b4faee) 45deg
      col.inactive_border = rgba(0x313244aa)
  }
  ```
- Known upstream regressions exist in the native scroller on 0.54 (windows
  piling left instead of scrolling). CI must include a smoke test that:
  opens 3 terminal windows, asserts hyprctl activewindow geometry moves
  off-viewport horizontally (x > monitor width for the 3rd window). If the
  pinned release fails this test, fall back plan B: cpiber/hyprscroller
  plugin via hyprpm, pinned to the matching Hyprland release, built in CI as
  a separate element. Document which plan is active in the repo README. Never
  ship a version where plan B plugin ABI mismatches the pinned Hyprland release.
- Scroller keybinds (must exist in default config):
  ```conf
  bind = $mainMod, left,  layoutmsg, colleft    # or scroller:movefocus l
  bind = $mainMod, right, layoutmsg, colright
  bind = $mainMod, up,    layoutmsg, colup
  bind = $mainMod, down,  layoutmsg, coldown
  bind = $mainMod, Tab,   layoutmsg, toggleoverview
  bind = $mainMod, F,     layoutmsg, fitwidth active
  bind = $mainMod, C,     layoutmsg, colresize +0.1   # exact dispatcher
  ```
  Verify each dispatcher exists at runtime (hyprctl dispatchers) and fail CI
  config validation if a name is wrong for the active plan.
- Touchpad: three-finger horizontal swipe → scroll columns. Use hyprctl
  gesture dispatch if supported; skip with a documented TODO if the pinned
  release lacks gesture dispatch.

### 2. Shell: Noctalia v5
- Package Noctalia v5 (native build) as BuildStream elements. Source:
  upstream release artifacts/source repo (noctalia-dev/noctalia). Do not
  package v4. Dependencies per upstream install docs — enumerate them
  explicitly in the element, don't rely on "it built once".
- Greeter: install noctalia-greeter + greetd; default session entry Dakota
  (Hyprland). Greeter theme synced to shell theme per Noctalia docs.
- Config strategy (three layers, per Noctalia "How configuration works"):
  - Ship base defaults as a template under /usr/share/dakota/noctalia/.
  - First-boot copies template to ~/.config/noctalia/ only if absent.
  - GUI edits write overrides on top — never fight the GUI, document that
    file wins, keep our defaults minimal so GUI remains authoritative.
- Keybind wiring: Noctalia IPC commands (launcher toggle, control center,
  notifications, screenshot) mapped in hyprland.conf, e.g.
  `bind = $mainMod, D, exec, noctalia launcher toggle` (verify exact IPC
  command names against the Noctalia IPC docs page and CI-validate them).
- Theme: dark default, wallpaper-color generation enabled, one default
  wallpaper shipped (CC0), placed where Noctalia's wallpaper folder config
  expects it.

### 3. Session & services
- exec-once chain: hyprpm reload -n (only if plan B), Noctalia shell
  autostart, xdg-desktop-portal-hyprland, polkit agent (Noctalia's if it
  provides one; else hyprpolkitagent).
- Session .desktop file for greetd: dakota-hyprland.desktop exec-ing a small
  /usr/bin/dakota-hyprland-session script that exports XDG_CURRENT_DESKTOP,
  runs Hyprland with our config.
- XWayland: include xwayland support in Hyprland build (native — no
  xwayland-satellite needed).

### 4. CI (GitHub Actions)
- Build pipeline: BuildStream build → bootc/ostree image → artifact.
- Smoke test job (QEMU or container-level where feasible):
  a. hyprctl dispatchers contains all dispatchers referenced by the shipped
     config (config lint — can run without display for plan A).
  b. If a display is available: launch Hyprland headless, open 3 windows,
     assert scrolling geometry, assert Noctalia process alive after 10s.
  c. Image boots (if QEMU infra exists) to greetd within timeout.
- Version lockfile: versions.yaml in repo root pinning Hyprland, Noctalia
  version, (plan B: hyprscroller commit). CI fails on unpinned drift.

## Acceptance criteria (all must be demonstrable)
1. bst build produces the image; CI green.
2. Booted image: greetd shows Noctalia greeter; login starts Hyprland +
   Noctalia bar/launcher.
3. Opening 4+ windows produces a horizontally scrollable column layout;
   $mainMod+Left/Right scrolls; overview works on $mainMod+Tab.
4. $mainMod+D opens Noctalia launcher; notifications, OSD volume, lock
   screen all functional without extra user setup.
5. README documents: active scroll plan (A native / B plugin), pinned
   versions, and the exact fallback procedure if Hyprland regresses scroller
   behavior in a future release.

## Working instructions for the agent
- Verify every dispatcher/IPC command name against live tool output
  (hyprctl dispatchers, Noctalia --help/docs) before writing it into config.
  Do not invent option names.
- Consult Noctalia v5+ documentation (Installation, Running Noctalia, IPC,
  Greeter) as the authority for Noctalia v5 specifics; quote the doc section
  in commit messages when wiring its config.
- Work in small commits: (1) Hyprland+scroller element & config, (2) Noctalia
  packaging, (3) greeter/session, (4) CI smoke tests, (5) docs.
- If a pinned component cannot build (missing dep, broken tag), STOP and
  report the exact error — do not silently bump versions past the lockfile.
- Honest caveat: the native scroller layout had reported regressions in 0.54
  (windows piling left), which is why plan A/B with a CI geometry test is the
  load-bearing decision rather than an assumption. If the pinned Hyprland is
  0.53.x, plan B (cpiber/hyprscroller) is the safer default.
