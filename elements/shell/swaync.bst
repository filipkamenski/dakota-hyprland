kind: meson

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/gtk3.bst
  - freedesktop-sdk.bst:components/glib.bst
  - freedesktop-sdk.bst:components/json-glib.bst
  - freedesktop-sdk.bst:components/libgee.bst
  - freedesktop-sdk.bst:components/libhandy.bst
  - freedesktop-sdk.bst:components/vala.bst

sources:
  - kind: git_repo
    url: https://github.com/ErikReider/SwayNotificationCenter.git
    track: main
    ref: v0.10.1
