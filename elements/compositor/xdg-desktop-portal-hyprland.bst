kind: cmake

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/wayland.bst
  - freedesktop-sdk.bst:components/wayland-protocols.bst
  - freedesktop-sdk.bst:components/pipewire.bst
  - freedesktop-sdk.bst:components/libdrm.bst
  - freedesktop-sdk.bst:extensions/mesa/mesa.bst
  - freedesktop-sdk.bst:components/systemd.bst
  - freedesktop-sdk.bst:components/inih.bst
  - compositor/hyprutils.bst
  - compositor/hyprlang.bst
  - deps/sdbus-cpp.bst
  - compositor/hyprland-protocols.bst
  - deps/hyprwayland-scanner.bst

sources:
  - kind: git
    url: https://github.com/hyprwm/xdg-desktop-portal-hyprland.git
    track: master
    ref: v1.4.1
    checkout-submodules: true
