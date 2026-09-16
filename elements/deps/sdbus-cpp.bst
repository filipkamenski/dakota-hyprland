kind: cmake

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst

sources:
  - kind: git
    url: https://github.com/sdbus-cpp/sdbus-cpp.git
    track: master
    ref: v2.1.0

variables:
  cmake-local: >-
    -DBUILD_TESTS=OFF
    -DBUILD_DOC=OFF
    -DBUILD_CODE_GEN=ON
