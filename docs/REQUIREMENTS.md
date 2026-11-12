# Requirements & Status — single source of truth

Read this file first in any new session before touching the repo. It plus
`docs/build-spec.md` replace conversation history: the spec states *what* must
be true, this file states *where we are* and *what proves it*.

Rules:
- One row per requirement. No dated session logs, no changelog narration.
- Requirement text changes go through `docs/build-spec.md` first; update only
  `Status` / `Evidence` here.
- `Status`: `DONE` (evidence exists and is reproducible), `OPEN` (specified, not
  built), `VIOLATED` (state contradicts the spec), `BLOCKED` (needs a human
  decision or an external dependency), `UNVERIFIED` (claimed, no evidence).
- An `Evidence` cell is a **command or artifact**, never "it worked".

## Decided architecture (settled — reopening one requires a new decision)

| # | Decision |
|---|---|
| D1 | Default config ships via `etc/skel`; `dakota-hyprland-defaults` re-seeds an existing user on demand (`cp`-style, never clobbering). No `/usr/share/dakota` template, no first-boot copy service. |
| D2 | Quickshell **ships** as our widget/effects host, alongside Noctalia v5, which stays the shell. The Qt 6.6+ stack is ours to build. |
| D3 | **Native scrolling only.** The plugin path ("plan B") is removed: upstream is archived and declares itself incompatible with native scrolling. |
| D4 | **No overview requirement.** The native scrolling layout has none. |
| D5 | **Clean-room configs only.** Nothing from an unlicensed source ships; the vendored collection is gone from the tree (kept outside the repo for reference). |
| D6 | **Noctalia's bar is the only bar.** Waybar is removed; the Quickshell bar is opt-in. |
| D7 | `cliamp` (MIT) is packaged for the music-reactive modules; modules needing an unpackaged tool do not ship. |

## Desktop (DE layer)

| ID | Requirement | Owning element / file | Evidence (check) | Status |
|---|---|---|---|---|
| R-DE-1 | Hyprland pinned to a stable tag with native scrolling (0.55+), Lua config | `elements/compositor/hyprland.bst`, `versions.yaml` | `v0.56.2` in both; `base-dir: Hyprland-0.56.2` | DONE |
| R-DE-2 | Noctalia v5 as shell (native, not Quickshell-based v4) | `elements/shell/noctalia.bst` | tag `v5.1.0` in `versions.yaml` | DONE |
| R-DE-3 | Greeter: greetd + noctalia-greeter | `shell/{greetd,noctalia-greeter}.bst`, `.../etc/greetd/config.toml` | files present; boot state unproven until an image boots | OPEN |
| R-DE-4 | Session entry + launcher script | `.../usr/share/wayland-sessions/dakota-hyprland.desktop`, `.../usr/bin/dakota-hyprland-session` | files present, both mode 100755/100644 as expected | OPEN |
| R-DE-5 | Defaults delivered via skel + re-seed script (D1) | `.../etc/skel/.config/**`, `.../usr/bin/dakota-hyprland-defaults` | script present, `bash -n` clean | DONE |
| R-DE-6 | Quickshell packaged as our widget/effects host, pinned (D2) | *(new)* `shell/quickshell.bst` + Qt stack | no element yet; `v0.3.2` pinned; FDS ships no Qt (709 component elements scanned) | OPEN |
| R-DE-7 | Exactly one config format: `hyprland.lua` (D7-era hyprlang ban) | `.../etc/skel/.config/hypr/` | skel holds only `hyprland.lua` | DONE |
| R-DE-8 | Every `hl.dsp.layout(...)` message exists in the wiki message set | `hyprland.lua` + `scripts/lint-config.py` | lint exits 0; found and fixed `consume_or_expel`, allowed `swapcol` per `wrap_swapcol` | DONE |
| R-DE-9 | CI geometry test: 3rd window scrolls off-viewport | test element / workflow | not implemented | OPEN |
| R-DE-10 | Exactly one bar in the session (D6) | skel, `elements/image/image.bst` | `grep -rn waybar elements/` → no hits; skel has no `waybar/` | DONE |
| R-DE-11 | Our own Quickshell configs (clean-room, D5) | `.../etc/skel/.config/quickshell/**` | vendor tree removed from the repo; our configs not written yet | OPEN |
| R-DE-12 | Configs must not depend on another distro's plumbing | our future configs | omarchy paths are gone from the tree with the vendor collection | OPEN |
| R-DE-13 | Music-reactive modules get their data source or are dropped (D7) | `music-wallpaper/`, `winamp-background/`, `data-sphere/` | `cliamp` `v2.3.0` (MIT) pinned in `versions.yaml`; element not written | OPEN |

## Image & boot layer (the current gap — see skill `dakota-hyprland-ci`)

| ID | Requirement | Owning element / file | Evidence (check) | Status |
|---|---|---|---|---|
| R-IMG-1 | Image contains **only** FDS userspace — no second distro, no second glibc | `.github/workflows/buildstream.yml` (Compose step) | image is now composed from the FDS rootfs **alone** — no base image is pulled, so nothing foreign can ride along; the compose step asserts one kernel tree, `sudo find rootfs -name '*el9*'` empty, no `/sysroot`/`/ostree`, and `strings rootfs/etc/ld.so.cache` free of `^/lib64/`; artifact proof = the gate's `userspace: OK (single FDS userland)` line in the PR run | UNVERIFIED |
| R-IMG-2 | bootc provided as a pinned BST element, not borrowed from a base container | `system/bootc.bst` | `kind: make` from `bootc-dev/bootc.git` @ `v1.17.1` (`d01e723`, matches `versions.yaml`); 426 cargo2 entries (417 registry, all sha-pinned) via new `plugins/buildstream-plugins-community.bst` junction (2.3.1, sha256 verified). `make` was missing from `project.conf`'s declared plugin elements: load-blocker, fixed. Element now **compiles**: run `39294187312` logs `build START` + `build SUCCESS` for `system/bootc.bst` (426-entry `cargo2` vendoring + the community `make` plugin both load and build clean); artifact is in the CI store. Still UNVERIFIED as *provided* until the composed image carries `/usr/bin/bootc` | UNVERIFIED |
| R-IMG-3 | Exactly one kernel tree in the image | `.github/workflows/buildstream.yml` (Compose step) | purge no longer needed: the tree comes from the FDS rootfs alone and the compose step fails unless `ls rootfs/usr/lib/modules` is exactly one entry (asserted before import and again in the gate) | OPEN |
| R-IMG-4 | initramfs from FDS dracut with `dm_mod dm_crypt btrfs` | `system/initramfs.bst` | element is now the ONLY production path (nothing about el9 dracut remains). Real root cause of the historical module-less initramfs was `components/linux.bst` running `make modules_install` without `depmod` → no `modules.dep`, so dracut-install resolved nothing. Element mirrors the kernel tree under `/tmp`, runs `depmod -b`, then `dracut --kmoddir … --add bootc --add-drivers "dm_mod dm_crypt btrfs"`, and self-gates with `lsinitrd` on `dm-crypt.ko`, `btrfs.ko`, `cryptsetup`, `ostree-prepare-root`, `ostree/prepare-root.conf`, `bootc-initramfs-setup`, `bootc-root-setup.service` | UNVERIFIED |
| R-IMG-5 | Image assembled as native OCI by FDS `oci-builder` (no `docker commit` + `skopeo`) | `image/image.bst` + new oci elements | `grep -c 'docker commit' .github/workflows/buildstream.yml` → 0 (commit dropped); still `docker import` of the rootfs + `skopeo --format oci`, so oci-builder remains the gap | OPEN |
| R-IMG-6 | Post-install integration order ends with `ldconfig -r /layer` | `system/system-base.bst` | `freedesktop-sdk.bst:integration/ldconfig.bst` now a dep: it publishes `public: bst: integration-commands: ldconfig` (+ `rm -r /var/cache/ldconfig`), which BuildStream runs inside the composed build root *before* the compose element captures its artifact — the same mechanism FDS's own OCI layers use. Content-addressed, so compose-time `ldconfig` and a post-install `ldconfig -r /layer` produce the identical file. The literal `-r /layer` script form would need the `collect_initial_scripts` **local plugin vendored** from FDS (`plugins/elements/collect_initial_scripts.py`), which `buildstream-plugins` 2.5.0 does not ship — deliberately not done | UNVERIFIED |
| R-IMG-7 | bootc install config present (`/usr/lib/bootc/install/00-*.toml`) | `elements/system/files/usr/lib/bootc/install/00-dakota.toml` | shipped through the existing `elements/system/files` import: `[install] bootloader = "systemd"`, `stateroot = "dakota"`, plus `[install.filesystem.root] type = "btrfs"` (matches the initramfs's dm_crypt/dm_mod/btrfs set). Root setup is bootc's composefs backend — the `composefs=` kargs are written by `bootc install`, not by this file — with `usr/lib/ostree/prepare-root.conf` covering the `ostree=` path; `discoverable-partitions` deliberately NOT enabled | UNVERIFIED |
| R-IMG-8 | Deployable via `bootc switch` on LUKS+Btrfs root | — | last staged image (`sha256:2bfa2a6b…`) failed to boot; do not boot it | BLOCKED |

## CI

| ID | Requirement | Owning element / file | Evidence (check) | Status |
|---|---|---|---|---|
| R-CI-1 | No mutable refs in `versions.yaml` | `versions.yaml` | `noctalia-greeter` pinned to `434b8095…` | DONE |
| R-CI-2 | Boot-readiness gate runs before publish | workflow | gate is step 9 and publish step 10 (compose step 8) — renumbered after the FDS-only compose landed; build/gate/compose run on PRs and on a branch `workflow_dispatch`, which publishes to `:test`, while only a push to main may write `:latest`. Unproven end-to-end: no run has yet reached the gate, because every run since has ended at the 300-min build cap | OPEN |
| R-CI-3 | QEMU boot to greeter as the top verification rung | — | not implemented; upstream uses `just boot-test` | OPEN |
| R-CI-4 | Artifact cache survives past the 7-day eviction | `.github/workflows/buildstream.yml`, `project.conf` | run `39168905786`: the store never left the container (save step: *Path(s) specified in the action for caching do(es) not exist*, `total_count: 0`). Fixed and VERIFIED-in-run-`39279994856`: the save step now succeeds (host `~/.cache/buildstream` created + bind-mounted into `bst-runner`), and `restore-keys: bst2-<os>-` is set. NOT fixed by us and not fixable from GitHub Actions: the FDS cache itself — CORRECTED 2026-10-21 from run `39294187312`'s own log: `:11001` DOES serve us anonymously — 536 pull attempts, **225 SUCCESS** (`Pulled artifact … <- https://cache.freedesktop-sdk.io:11001`) and **311 "Remote … does not have artifact … cached"**, plus 256 source-cache hits. The earlier "not-found for all 486 elements" reading came from a bare anonymous GET of the CAS root, which is not the CAS protocol. `:11004` is upstream's read+push endpoint (GitLab-OIDC access token, `override-project-caches: true`; anonymous = 401) — only the push half is out of reach. Treat the FDS cache as a **partial** accelerator and measure it, do not re-litigate it. MEASURED 2026-11-11: the store itself still saves correctly (run `39520487883`: *Cache saved with key bst2-Linux-db697662…-39520487883*, 1.38 GB) but GitHub **evicted it during the 21-day idle gap** — `GET /actions/caches` returned `total_count: 0`, so the restart run `43050817110` began COLD despite the previous run ending at 512/586 elements with artifacts. Redispatch-to-resume only works within 7 days of the last run; a longer gap silently costs the whole cold pass again. MEASURED 2026-11-11 (second failure mode, same requirement): the store is also dropped at SAVE time while the step reports green — run `43050817110` lost 405 compiled elements to a transient reserve fault (`Attempt 1..4 of 5 failed: Unexpected token 'u', "upstream c"... is not valid JSON` → `Failed to save: Unable to reserve cache with key …` → `##[warning]Cache save failed.`) masked by `continue-on-error: true`; the caches API (`total_count: 0`) was the only tell. Fixed in `500f608`: the save carries an id, reads `steps.<id>.outcome` (pre-continue-on-error), retries with a fresh key suffix, and a verify step fails loudly when both saves failed on a run whose build did not succeed. ALSO MEASURED: the FDS remote cache stopped serving keys it used to serve — **222 of the 225 keys that hit on 2026-10-21 now answer `does not have artifact … cached`, on the SAME commit** (513 of 540 element keys byte-identical between the two runs; the 27 that differ are our own auto-tracked elements), so a pass now compiles ~405 elements locally instead of ~287 and the FDS cache can no longer be counted on for free elements. ROOT CAUSE FOUND 2026-11-12 (this is why no number of passes could ever converge): the cached store path was the BuildStream **1.x** `artifactdir`. BS 2.8.1 `_context.py` uses `casdir = <cachedir>/cas` for every artifact's payload, `artifactdir = <cachedir>/artifacts/refs` for the refs, `sourcedir = <cachedir>/sources`, `builddir = <cachedir>/build`; the default user config sets `cachedir: ${XDG_CACHE_HOME}/buildstream` and the 2.6 porting doc states `artifactdir`/`builddir` were removed in favour of `cachedir` + a local CAS. The workflow cached `~/.cache/buildstream/{artifacts,sources}`, so the save captured SOURCES ONLY — proven by the archive sizes themselves: pass 4 saved `1671121316` B and pass 5 `1671105831` B, within 15 KB of each other, while 173 more elements logged `SUCCESS Caching artifact` in between; three passes accumulated only 191 distinct elements of 586, and pass 4 rebuilt exactly the 61 elements pass 3 had just built. Fixed in `a0eafca` (cache `cas` + `artifacts` + `sources` on all four path lists, create `cas/`, and print the store layout every run) | PARTIAL |
| R-CI-5 | Config lint fails on unknown layout messages / IPC names | `scripts/lint-config.py`, workflow step | script exits 0 on the shipped config; step added to the workflow | DONE |

## Docs

| ID | Requirement | Owning element / file | Evidence (check) | Status |
|---|---|---|---|---|
| R-DOC-1 | README documents the pins, native-only scrolling, and which bar runs | `README.md` | README does not mention them | OPEN |
| R-DOC-2 | Spec describes the image as bootc/composefs, never ostree | `docs/build-spec.md` | §4 now reads "bootc/composefs OCI image" | DONE |
| R-DOC-3 | Spec covers the image/boot layer | `docs/build-spec.md` + this file | pipeline + verification ladder in spec; details in R-IMG-* | DONE |

## Open blockers

| ID | Blocker | Options |
|---|---|---|
| R-DE-11 | Our own Quickshell configs do not exist yet — no bar module, no effects modules, so Quickshell currently ships nothing to run. | Write them (clean-room) as the next desktop item, or ship the element with no configs for now. |
| R-DE-7 | `hyprland.lua` starts only Noctalia; the autostart chain for our own Quickshell modules is unwritten. | Write with the configs. |
