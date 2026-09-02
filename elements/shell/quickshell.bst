kind: cmake

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/qt6-base.bst
  - freedesktop-sdk.bst:components/qt6-declarative.bst
  - freedesktop-sdk.bst:components/qt6-wayland.bst
  - freedesktop-sdk.bst:components/qt6-shadertools.bst
  - freedesktop-sdk.bst:components/wayland.bst
  - freedesktop-sdk.bst:components/wayland-protocols.bst
  - freedesktop-sdk.bst:components/pipewire.bst
  - freedesktop-sdk.bst:components/pam.bst
  - freedesktop-sdk.bst:components/libxkbcommon.bst

sources:
  - kind: git_repo
    url: https://github.com/outfoxxed/quickshell.git
    track: master
    checkout-submodules: true
