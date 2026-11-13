kind: cmake

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/pixman.bst

sources:
  - kind: git
    url: https://github.com/hyprwm/hyprutils.git
    ref: v0.14.2


variables:
  cmake-local: -DCMAKE_POLICY_VERSION_MINIMUM=3.5