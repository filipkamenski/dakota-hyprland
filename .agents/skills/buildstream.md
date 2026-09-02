# BuildStream Skill for Agents

## Common Commands
- `bst show elements/image/image.bst`: Inspect element dependency pipeline.
- `bst source track --deps all elements/image/image.bst`: Update git commit references for elements tracking branches.
- `bst build elements/image/image.bst`: Build target filesystem.
- `bst artifact checkout elements/image/image.bst --directory ./rootfs`: Extract compiled rootfs.

## Element Kinds
- `cmake`: Uses CMake build system. Requires `freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst`.
- `meson`: Uses Meson/Ninja. Requires `freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst`.
- `cargo`: Compiles Rust crates. Requires `freedesktop-sdk.bst:components/rust.bst` and `cargo.bst`.
- `compose`: Combines dependencies into a single output tree. Use `integrate: true` to run post-install integration hooks.
- `stack`: Logical grouping with zero filesystem output (used for abstract dependency sets).
