kind: cmake

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst

sources:
  - kind: git
    url: https://github.com/canihavesomecoffee/udis86.git
    track: master

variables:
  cmake-local: >-
    -DPYTHON_API=OFF
