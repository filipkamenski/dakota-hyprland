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
| R-IMG-2 | bootc provided as a pinned BST element, not borrowed from a base container | *(new)* `system/bootc.bst` | pinned `v1.17.1` in `versions.yaml`; no element | OPEN |
| R-IMG-3 | Exactly one kernel tree in the image | `.github/workflows/buildstream.yml` (Compose step) | purge no longer needed: the tree comes from the FDS rootfs alone and the compose step fails unless `ls rootfs/usr/lib/modules` is exactly one entry (asserted before import and again in the gate) | OPEN |
| R-IMG-4 | initramfs from FDS dracut with `dm_mod dm_crypt btrfs` | *(new)* initramfs element | **no initramfs is produced at all now** — the el9 dracut went away with the base container. FDS ships `usr/bin/dracut` in the tree, so the element can chroot-generate it; the publish step refuses to ship until `usr/lib/modules/<kver>/initramfs.img` exists | OPEN |
| R-IMG-5 | Image assembled as native OCI by FDS `oci-builder` (no `docker commit` + `skopeo`) | `image/image.bst` + new oci elements | `grep -c 'docker commit' .github/workflows/buildstream.yml` → 0 (commit dropped); still `docker import` of the rootfs + `skopeo --format oci`, so oci-builder remains the gap | OPEN |
| R-IMG-6 | Post-install integration order ends with `ldconfig -r /layer` | *(new)* integration element | not implemented; upstream rule in `references/upstream-dakota-rules/` | OPEN |
| R-IMG-7 | bootc install config present (`/usr/lib/bootc/install/00-*.toml`) | *(new)* `elements/system/files/**` | absent | OPEN |
| R-IMG-8 | Deployable via `bootc switch` on LUKS+Btrfs root | — | last staged image (`sha256:2bfa2a6b…`) failed to boot; do not boot it | BLOCKED |

## CI

| ID | Requirement | Owning element / file | Evidence (check) | Status |
|---|---|---|---|---|
| R-CI-1 | No mutable refs in `versions.yaml` | `versions.yaml` | `noctalia-greeter` pinned to `434b8095…` | DONE |
| R-CI-2 | Boot-readiness gate runs before publish | workflow | gate is step 7, publish step 8; both compose and gate now run on PRs (publish stays main-only) | OPEN |
| R-CI-3 | QEMU boot to greeter as the top verification rung | — | not implemented; upstream uses `just boot-test` | OPEN |
| R-CI-4 | Artifact cache survives past the 7-day eviction | workflow | cache store was empty (`total_count: 0`) → cold 4.5 h rebuild | OPEN |
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
