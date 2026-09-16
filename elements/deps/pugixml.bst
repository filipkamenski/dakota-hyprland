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
      install -Dm644 src/pugixml.hpp %{install-root}%{includedir}/pugixml.hpp
      install -Dm644 src/pugiconfig.hpp %{install-root}%{includedir}/pugiconfig.hpp
      install -Dm755 _builddir/libpugixml.a %{install-root}%{libdir}/libpugixml.a || true
      install -Dm755 _builddir/libpugixml.so* %{install-root}%{libdir}/ || true
