kind: cmake

# hyprwire - Hyprland's IPC wire protocol library
depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - compositor/hyprutils.bst
  - freedesktop-sdk.bst:components/libffi.bst

sources:
  - kind: git
    url: https://github.com/hyprwm/hyprwire.git
    track: main
    ref: v0.3.1

variables:
  cmake-local: >-
    -DBUILD_TESTS=OFF
