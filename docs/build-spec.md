# BUILD SPEC: Dakota Hyprland — Noctalia v5 + scrolling-layout Wayland session

## Mission
Build a complete, reproducible Hyprland-based Wayland session for the Dakota
Hyprland distro (BuildStream 2, built in GitHub Actions cloud CI) that ships:

1. **Hyprland** (pinned stable release, 0.55+; native scrolling layout via
   `hl.config({ general = { layout = "scrolling" } })`) as the default tiling
   model, configured in Lua.
2. **Noctalia Shell v5** (native runtime, NOT the Quickshell-based v4) as the
   desktop shell: bar, launcher, notifications, lock screen, control center,
   OSDs. Quickshell itself ships separately as our widget/effects host — see
   "## Quickshell" below.
3. A first-boot experience where a user gets a working login (greetd +
   noctalia-greeter), a scrolling tiling desktop, and sane keybinds.

Success = on a fresh machine, the image boots to the Noctalia greeter, logs
into Hyprland, and the user can scroll horizontally through column-tiled
windows with zero manual config.

## Non-goals
- No noctalia-qs (v4). No GNOME session.
- Do NOT fork Noctalia — package and configure it as shipped upstream.
- No scrolling-layout plugin and no plugin fallback ("plan B"): the upstream
  fork is archived and declares itself incompatible with Hyprland's native
  scrolling layout. Native scrolling only.

## Quickshell
Decided: **only configs we own ship.** The vendor collection these widgets were
inspired by carries no licence, so it is not redistributed — our configs are
written clean-room against this spec.
Decided: **Noctalia's bar is the only bar.** Waybar is removed from the image;
the Quickshell bar is an opt-in module a user can enable.
Decided: `cliamp` (MIT) is packaged as the data source for the music-reactive
modules; a module that needs a tool we do not ship does not ship.

Quickshell ships as our widget/effects host (overlays, shaders, backgrounds,
OSD flourishes) alongside Noctalia v5, which remains the shell. Pin
`quickshell-mirror/quickshell` (LGPL-3) in versions.yaml. FDS ships no Qt, so
Qt 6.6+ (qtbase, qtdeclarative, qtshadertools, qtwayland, qt6svg) and libdrm,
cli11, jemalloc are our own elements; quickshell uses private Qt APIs and must
be rebuilt in lockstep with Qt. Only configs we own or are licensed to
redistribute may ship in the image.

## Architecture constraints
- Distro builds via **BuildStream 2**; CI is **GitHub Actions**. Everything
  new must be expressible as BuildStream elements — no `curl | sh` in runtime images.
- Target runtime: x86_64 UEFI machines. Follow the existing Dakota Hyprland
  repo layout, bootc/image-based conventions, and existing element naming.
- Default config ships in the image via `etc/skel` (Hyprland reads
  `$XDG_CONFIG_HOME/hypr/hyprland.lua`; Noctalia reads the first of
  `$NOCTALIA_CONFIG_HOME/noctalia/`, `$XDG_CONFIG_HOME/noctalia/`,
  `~/.config/noctalia/`, merging every `*.toml` alphabetically). There is no
  first-boot copy service and no `/usr/share/dakota` template: skel seeds new
  users, and `dakota-hyprland-defaults` re-seeds an existing user on demand
  (`cp --no-clobber`). Never hand-edit user $HOME in the image build.

## Component spec

### 1. Compositor: Hyprland + scrolling
- Pin Hyprland to a stable release with the **native scrolling layout**
  (0.55+, where hyprlang was deprecated in favour of Lua); record the pin in the
  BuildStream element and in versions.yaml (do not track git master). The
  shipped config is `hyprland.lua` in Lua syntax — no hyprlang `.conf`.
- Default layout config (Lua, shipped as `etc/skel/.config/hypr/hyprland.lua`):
  ```lua
  hl.config({
    general = {
      layout      = "scrolling",   -- native scrolling layout
      gaps_in     = 6,
      gaps_out    = 12,
      border_size = 2,
      col = {
        active_border   = { colors = { "rgba(0xcba6f7ee)", "rgba(0x89b4faee)" }, angle = 45 },
        inactive_border = "rgba(0x313244aa)",
      },
    },
    scrolling = { column_width = 0.5, focus_fit_method = 1, follow_focus = true, direction = "right" },
  })
  ```
- CI must include a geometry smoke test: open 3 terminal windows and assert
  `hyprctl activewindow` geometry moves off-viewport horizontally (x > monitor
  width for the 3rd window). There is no plugin fallback — a failure means the
  pinned Hyprland is wrong, not that we switch layouts.
- Layout messages, verified against the Scrolling Layout wiki page (Lua syntax,
  `hl.dsp.layout("<message>")`). The full set is:
  `move +col|-col|<px>`, `colresize <v>|+v|-v|+conf|-conf|all <n>`,
  `fit active|visible|all|toend|tobeg|expand`, `fit_into_view`,
  `focus l|r|u|d`, `promote`, `inhibit_scroll`, `expel`.
  The older hyprlang spellings (`layoutmsg`, `colleft`, `fitwidth`,
  `toggleoverview`) are gone and MUST NOT appear in any config.
  Required default binds (Lua, in `hyprland.lua`):
  ```lua
  hl.bind(mainMod .. "+Left",  hl.dsp.layout("focus l"))
  hl.bind(mainMod .. "+Right", hl.dsp.layout("focus r"))
  hl.bind(mainMod .. "+Up",    hl.dsp.layout("move -col"))
  hl.bind(mainMod .. "+Down",  hl.dsp.layout("move +col"))
  hl.bind(mainMod .. "+Tab",   hl.dsp.layout("promote"))
  hl.bind(mainMod .. "+F",     hl.dsp.layout("fit active"))
  hl.bind(mainMod .. "+bracketright", hl.dsp.layout("colresize +conf"))
  ```
  There is no overview: the native scrolling layout has none. CI must lint every
  `hl.dsp.layout(...)` argument in the shipped config against the message list
  above and fail on an unknown message.
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
- Session start chain (Lua `hl.on("hyprland.start", ...)`): Noctalia shell,
  xdg-desktop-portal-hyprland, polkit agent (Noctalia's if it provides one;
  else hyprpolkitagent) and whichever Quickshell modules we ship as daemons.
  No hyprpm and no plugin loading — there is no plugin in the image.
- Session .desktop file for greetd: dakota-hyprland.desktop exec-ing a small
  /usr/bin/dakota-hyprland-session script that exports XDG_CURRENT_DESKTOP,
  runs Hyprland with our config.
- XWayland: include xwayland support in Hyprland build (native — no
  xwayland-satellite needed).

### 4. CI (GitHub Actions)
- Build pipeline: BuildStream build → bootc/composefs OCI image → artifact.
  The image is composed by FDS's `oci-builder` from `kind: compose` layers; it
  contains no second distro's userspace and exactly one kernel tree.
- Verification ladder, cheapest first: element builds → `bst show` graph check →
  config lint (layout messages, IPC command names) → image structure check →
  QEMU boot to greeter.
- Smoke test job (QEMU or container-level where feasible):
  a. hyprctl dispatchers contains all dispatchers referenced by the shipped
     config (config lint — can run without display for plan A).
  b. If a display is available: launch Hyprland headless, open 3 windows,
     assert scrolling geometry, assert Noctalia process alive after 10s.
  c. Image boots (if QEMU infra exists) to greetd within timeout.
- Version lockfile: `versions.yaml` pins Hyprland, Noctalia, noctalia-greeter
  (commit, never a branch), Quickshell, bootc and freedesktop-sdk. CI fails on
  unpinned drift.

## Acceptance criteria (all must be demonstrable)
1. bst build produces the image; CI green.
2. Booted image: greetd shows Noctalia greeter; login starts Hyprland +
   Noctalia bar/launcher.
3. Opening 4+ windows produces a horizontally scrollable column layout;
   $mainMod+Left/Right moves focus column-by-column and the tape scrolls.
   (Overview is not part of this criterion — the native layout has none.)
4. $mainMod+D opens Noctalia launcher; notifications, OSD volume, lock
   screen all functional without extra user setup.
5. README documents the pins (hyprland, noctalia, quickshell, bootc, FDS),
   that native scrolling is the only supported layout, and which bar the
   session runs.

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
- Load-bearing assumption: native scrolling is the only supported path, so the
  geometry test is what tells us whether the *pin* is good. If it fails, the
  response is a different Hyprland pin — not a layout plugin (the plugin line is
  archived and incompatible).
