# AGENTS.md - Dakota Hyprland

This repository builds **Dakota Hyprland** (*Dakotaraptor steini* Hyprland flavor), an image-based, cloud-native Linux workstation assembled from source using **BuildStream 2 (`bst`)** and delivered as a bootable OCI container (`bootc`).

## Ground Rules for Autonomous AI Agents

1. **BuildStream Exclusivity:**
   - Never introduce ad-hoc package manager commands (`dnf`, `apt`, `pacman`) or Containerfile package overlays into the base OS rootfs.
   - All system packages, libraries, and desktop components must be defined as declarative `.bst` elements under `elements/`.

2. **Upstream First:**
   - Rely on `freedesktop-sdk.bst` junctions for standard toolchains (GCC, Clang, Meson, CMake, Python, Rust).
   - Hyprland and compositor tools track git tags or stable branches directly from upstream repositories.

3. **Validation Workflow:**
   - Whenever updating or adding an element:
     ```bash
     # Check dependency tree resolution
     bst show --deps run elements/image/image.bst
     
     # Test single element build
     bst build elements/<category>/<element>.bst
     ```

4. **Feedback Loop Integration:**
   - Maintain the `Justfile` evidence commands (`report`, `confirm`, `verify`).
   - Every issue triage agent must inspect hardware diagnostic bundles attached to GitHub issues before suggesting element modifications.

5. **Commit & PR Conventions:**
   - Use conventional commits: `feat(compositor): bump hyprland to v0.46.2`, `fix(shell): add missing libxkbcommon dep to waybar`.
   - Never commit build artifacts, cache folders, or credentials.
