kind: cargo

depends:
  - freedesktop-sdk.bst:components/rust.bst
  - freedesktop-sdk.bst:components/cargo.bst
  - freedesktop-sdk.bst:components/pkg-config.bst

sources:
  - kind: git_repo
    url: https://github.com/apognu/tuigreet.git
    track: master
    ref: 0.9.1
