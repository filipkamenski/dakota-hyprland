kind: cargo

depends:
  - freedesktop-sdk.bst:bootstrap/bash.bst
  - freedesktop-sdk.bst:bootstrap/coreutils.bst
  - freedesktop-sdk.bst:bootstrap/symlinks.bst
  - freedesktop-sdk.bst:components/rust.bst
  - freedesktop-sdk.bst:components/pkg-config.bst

sources:
  - kind: git
    url: https://github.com/tuigreet/tuigreet.git
    track: master
    ref: 0.11.1
