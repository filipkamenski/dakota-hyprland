kind: manual

depends:
  - freedesktop-sdk.bst:bootstrap/bash.bst
  - freedesktop-sdk.bst:bootstrap/coreutils.bst
  - freedesktop-sdk.bst:bootstrap/symlinks.bst
  - freedesktop-sdk.bst:components/rust.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/linux-pam.bst

sources:
  - kind: git
    url: https://git.sr.ht/~kennylevinsen/greetd
    track: master
    ref: 0.9.0
  - kind: cargo
    cargo-lock: Cargo.lock

config:
  build-commands:
    - |
    cargo build --release --frozen

  install-commands:
    - |
    install -Dm755 target/release/greetd %{install-root}%{bindir}/greetd
    install -Dm755 target/release/agreety %{install-root}%{bindir}/agreety
    install -Dm644 greetd.service %{install-root}%{libdir}/systemd/system/greetd.service
