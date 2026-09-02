kind: cmake

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/cairo.bst
  - freedesktop-sdk.bst:components/pango.bst
  - freedesktop-sdk.bst:components/libdrm.bst
  - freedesktop-sdk.bst:components/libinput.bst
  - freedesktop-sdk.bst:components/libxkbcommon.bst
  - freedesktop-sdk.bst:components/mesa.bst
  - freedesktop-sdk.bst:components/pixman.bst
  - freedesktop-sdk.bst:components/wayland.bst
  - freedesktop-sdk.bst:components/wayland-protocols.bst
  - freedesktop-sdk.bst:components/seatd.bst
  - freedesktop-sdk.bst:components/systemd.bst
  - freedesktop-sdk.bst:components/pipewire.bst
  - compositor/hyprutils.bst
  - compositor/hyprlang.bst
  - compositor/hyprcursor.bst
  - compositor/aquamarine.bst
  - compositor/hyprland-protocols.bst

sources:
  - kind: git_repo
    url: https://github.com/hyprwm/Hyprland.git
    track: main
    ref: v0.46.2
    checkout-submodules: true

variables:
  cmake-local: >-
    -DNO_XWAYLAND=OFF
    -DNO_SYSTEMD=OFF
