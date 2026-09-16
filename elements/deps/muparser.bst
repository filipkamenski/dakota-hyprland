kind: cmake

# muParser - math expression parser (Hyprland dependency)
depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst

sources:
  - kind: git
    url: https://github.com/beltoforion/muparser.git
    track: master
    ref: v2.3.4

variables:
  cmake-local: >-
    -DBUILD_SHARED_LIBS=ON
    -DENABLE_SAMPLES=OFF
    -DENABLE_OPENMP=OFF
