kind: cmake

# re2 (regular expressions) - Hyprland dependency
depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/abseil-cpp.bst

sources:
  - kind: git
    url: https://github.com/google/re2.git
    track: main
    ref: 2024-07-02

variables:
  cmake-local: >-
    -DRE2_BUILD_TESTING=OFF
