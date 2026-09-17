kind: cmake

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/wayland.bst
  - freedesktop-sdk.bst:components/wayland-protocols.bst
  - freedesktop-sdk.bst:components/pipewire.bst
  - freedesktop-sdk.bst:components/libdrm.bst
  - freedesktop-sdk.bst:components/git.bst
  - freedesktop-sdk.bst:extensions/mesa/mesa.bst
  - freedesktop-sdk.bst:components/systemd.bst
  - freedesktop-sdk.bst:components/inih.bst
  - compositor/hyprutils.bst
  - compositor/hyprlang.bst
  - deps/sdbus-cpp.bst
  - compositor/hyprland-protocols.bst
  - deps/hyprwayland-scanner.bst

variables:
  cmake-local: -DCMAKE_PREFIX_PATH=/usr

sources:
  - kind: git
    url: https://github.com/hyprwm/xdg-desktop-portal-hyprland.git
    track: master
    ref: v1.4.1
    checkout-submodules: true
config:
  configure-commands:
    - |
      # Qt6 (share-picker) not available in FDS; remove the optional picker subproject
      sed -i '/add_subdirectory(hyprland-share-picker)/d; /install(TARGETS hyprland-share-picker)/d' CMakeLists.txt
      cmake -B_builddir -H"." -G"Ninja" -DCMAKE_INSTALL_PREFIX:PATH="/usr" -DCMAKE_INSTALL_LIBDIR:PATH="lib" -DCMAKE_PREFIX_PATH=/usr

