kind: cmake

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/libdrm.bst
  - freedesktop-sdk.bst:components/libdisplay-info.bst
  - freedesktop-sdk.bst:components/libinput.bst
  - freedesktop-sdk.bst:extensions/mesa/mesa.bst
  - freedesktop-sdk.bst:components/wayland.bst
  - freedesktop-sdk.bst:components/wayland-protocols.bst
  - freedesktop-sdk.bst:components/hwdata.bst
  - freedesktop-sdk.bst:components/libseat.bst
  - freedesktop-sdk.bst:components/libglvnd.bst
  - deps/hyprwayland-scanner.bst
  - compositor/hyprutils.bst

variables:
  cmake-local: -DCMAKE_PREFIX_PATH=/usr

sources:
  - kind: git
    url: https://github.com/hyprwm/aquamarine.git
    track: main
    ref: v0.15.0
