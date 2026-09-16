kind: cmake

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - compositor/hyprutils.bst

variables:
  cmake-local: -DCMAKE_PREFIX_PATH=/usr

sources:
  - kind: git
    url: https://github.com/hyprwm/hyprlang.git
    track: main
    ref: v0.6.8
