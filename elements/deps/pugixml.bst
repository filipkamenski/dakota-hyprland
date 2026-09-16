kind: cmake

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst

sources:
  - kind: git
    url: https://github.com/zeux/pugixml.git
    track: master
    ref: v1.15

variables:
  cmake-local: >-
    -DBUILD_TESTS=OFF
    -DPUGIXML_BUILD_TESTS=OFF

config:
  install-commands:
    - |
      install -Dm644 _builddir/pugixml.pc %{install-root}%{libdir}/pkgconfig/pugixml.pc
