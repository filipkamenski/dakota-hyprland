kind: cmake

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/wayland.bst
  - freedesktop-sdk.bst:components/wayland-protocols.bst
  - freedesktop-sdk.bst:components/cairo.bst
  - freedesktop-sdk.bst:components/pango.bst
  - freedesktop-sdk.bst:components/libdrm.bst
  - freedesktop-sdk.bst:components/libxkbcommon.bst
  - freedesktop-sdk.bst:components/linux-pam.bst
  - compositor/hyprutils.bst
  - compositor/hyprlang.bst
  - compositor/hyprland-protocols.bst

sources:
  - kind: git
    url: https://github.com/hyprwm/hyprlock.git
    track: main
    ref: v0.6.2
