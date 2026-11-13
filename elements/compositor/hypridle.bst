kind: cmake

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/wayland.bst
  - freedesktop-sdk.bst:components/wayland-protocols.bst
  - deps/hyprwayland-scanner.bst
  - deps/sdbus-cpp.bst
  - freedesktop-sdk.bst:components/systemd.bst
  - compositor/hyprutils.bst
  - compositor/hyprlang.bst
  - compositor/hyprland-protocols.bst

sources:
  - kind: git
    url: https://github.com/hyprwm/hypridle.git
    ref: v0.1.8


variables:
  cmake-local: -DCMAKE_POLICY_VERSION_MINIMUM=3.5