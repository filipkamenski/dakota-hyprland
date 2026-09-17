kind: cmake

# Hyprland built from the upstream release tarball.
# Subprojects (udis86, tracy, hyprland-protocols) are staged from our own
# elements into subprojects/ via dependency staging locations.

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/cairo.bst
  - freedesktop-sdk.bst:components/pango.bst
  - freedesktop-sdk.bst:components/pixman.bst
  - freedesktop-sdk.bst:components/libdrm.bst
  - freedesktop-sdk.bst:components/libinput.bst
  - freedesktop-sdk.bst:components/libxkbcommon.bst
  - freedesktop-sdk.bst:components/libei.bst
  - freedesktop-sdk.bst:components/libdisplay-info.bst
  - freedesktop-sdk.bst:components/xorg-lib-xcursor.bst
  - freedesktop-sdk.bst:extensions/mesa/mesa.bst
  - freedesktop-sdk.bst:components/mesa-headers.bst
  - freedesktop-sdk.bst:components/glib.bst
  - freedesktop-sdk.bst:components/libseat.bst
  - freedesktop-sdk.bst:components/systemd.bst
  - freedesktop-sdk.bst:components/libglvnd.bst
  - freedesktop-sdk.bst:components/glslang.bst
  - freedesktop-sdk.bst:components/util-linux-full.bst
  - freedesktop-sdk.bst:components/xorg-lib-xcb.bst
  - freedesktop-sdk.bst:components/xcb-util-cursor.bst
  - freedesktop-sdk.bst:components/pipewire.bst
  - deps/egl-dispatch-stubs.bst
  - freedesktop-sdk.bst:components/lua.bst
  - deps/udis86.bst
  - deps/glaze.bst
  - deps/sdbus-cpp.bst
  - deps/hyprwire.bst
  - deps/re2.bst
  - deps/muparser.bst
  - deps/libcanberra.bst
  - deps/hyprwayland-scanner.bst
  - compositor/hyprutils.bst
  - compositor/hyprlang.bst
  - compositor/hyprcursor.bst
  - compositor/hyprgraphics.bst
  - compositor/aquamarine.bst
  - compositor/hyprland-protocols.bst

sources:
  - kind: tar
    url: https://github.com/hyprwm/Hyprland/archive/refs/tags/v0.56.2.tar.gz
    ref: ddeb92a654fa65d41ed2add3176de4fe54eab3752441c33ca99f5e598e0571e5
    # GitHub tarballs extract with a top-level dir; strip it
    base-dir: Hyprland-0.56.2
  - kind: git
    url: https://github.com/hyprwm/hyprland-protocols.git
    track: main
    ref: v0.7.1
    directory: subprojects/hyprland-protocols
  - kind: git
    url: https://github.com/canihavesomecoffee/udis86.git
    track: master
    ref: 5336633af70f3917760a6d441ff02d93477b0c86
    directory: subprojects/udis86
  - kind: git
    url: https://github.com/wolfpld/tracy.git
    track: master
    ref: 05cceee0df3b8d7c6fa87e9638af311dbabc63cb
    directory: subprojects/tracy

variables:
  cmake-local: >-
    -DCMAKE_PREFIX_PATH=/usr
    -DNO_XWAYLAND=ON
    -DNO_SYSTEMD=OFF


config:
  configure-commands:
    - |
      # FDS lua.pc leaks /buildstream-install into Cflags; fix it up
      find /usr -name "*.pc" -exec grep -l "buildstream-install" {} \; 2>/dev/null | while read f; do sed -i "s|/buildstream-install||g" "$f"; done || true
      (cmake -B_builddir -H"." -G"Ninja" -DCMAKE_VERBOSE_MAKEFILE=ON \
        -DCMAKE_INSTALL_PREFIX:PATH="/usr" \
        -DCMAKE_INSTALL_LIBDIR:PATH="lib" -DCMAKE_PREFIX_PATH=/usr -DNO_XWAYLAND=ON -DNO_SYSTEMD=OFF 2>&1 | tee /tmp/cfg.log) || true
      echo "===ERRORS==="
      grep -iE "error|fatal|Generate step failed" /tmp/cfg.log | head -40 || true
      echo "===TAIL==="
      tail -n 30 /tmp/cfg.log || true
      exit 1

  build-commands:
    - cmake --build _builddir -- ${JOBS}

  install-commands:
    - env DESTDIR="/buildstream-install" cmake --build _builddir --target install
