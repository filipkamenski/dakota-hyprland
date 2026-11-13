kind: cmake

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst

sources:
  - kind: git
    url: https://github.com/hyprwm/hyprland-protocols.git
    ref: v0.7.1


variables:
  cmake-local: -DCMAKE_POLICY_VERSION_MINIMUM=3.5