kind: cmake

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/pixman.bst

sources:
  - kind: git
    url: https://github.com/hyprwm/hyprutils.git
    track: main
    ref: v0.14.2
config:
  install-commands:
    - |
      cp -r include/hyprutils %{install-root}%{includedir}/
      install -Dm755 _builddir/libhyprutils.so* %{install-root}%{libdir}/ || true
      install -Dm644 _builddir/hyprutils.pc %{install-root}%{libdir}/pkgconfig/hyprutils.pc
