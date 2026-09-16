kind: cmake

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/cairo.bst
  - freedesktop-sdk.bst:components/librsvg.bst
  - deps/libzip.bst
  - freedesktop-sdk.bst:components/tomlplusplus.bst
  - compositor/hyprutils.bst
  - compositor/hyprlang.bst

sources:
  - kind: git
    url: https://github.com/hyprwm/hyprcursor.git
    track: main
    ref: v0.1.13
