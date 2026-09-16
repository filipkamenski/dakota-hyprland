kind: meson

# re2 (regular expressions) - Hyprland dependency
depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst

sources:
  - kind: git
    url: https://github.com/google/re2.git
    track: main
    ref: 2024-07-02
