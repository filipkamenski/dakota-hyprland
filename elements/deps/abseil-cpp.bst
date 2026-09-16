kind: cmake

# Abseil C++ - required by re2 (Hyprland dependency)
depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst

sources:
  - kind: git
    url: https://github.com/abseil/abseil-cpp.git
    track: master
    ref: 20240722.0

variables:
  cmake-local: >-
    -DABSL_BUILD_TESTING=OFF
    -DABSL_PROPAGATE_CXX_STD=ON
