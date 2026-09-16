kind: cmake

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst

sources:
  - kind: git
    url: https://github.com/mity/md4c.git
    track: master
    ref: 0.5.2

variables:
  cmake-local: >-
    -DBUILD_MD2HTML_EXECUTABLE=OFF
