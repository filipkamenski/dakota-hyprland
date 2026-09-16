kind: manual

depends:
  - freedesktop-sdk.bst:public-stacks/runtime-gnu.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/ninja.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/stripper.bst
  - freedesktop-sdk.bst:components/rust.bst
  - freedesktop-sdk.bst:bootstrap/bash.bst
  - freedesktop-sdk.bst:bootstrap/coreutils.bst
  - freedesktop-sdk.bst:bootstrap/symlinks.bst

sources:
  - kind: git
    url: https://github.com/tuigreet/tuigreet.git
    track: master
    ref: 0.11.1
  - kind: cargo
    cargo-lock: Cargo.lock

config:
  build-commands:
    - CARGO_TARGET_X86_64_UNKNOWN_LINUX_GNU_LINKER=cc cargo build --release --frozen --package tuigreet

  install-commands:
    - install -Dm755 target/release/tuigreet %{install-root}%{bindir}/tuigreet
