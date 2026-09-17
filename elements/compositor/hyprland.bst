kind: cmake

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/cairo.bst
  - freedesktop-sdk.bst:components/pango.bst
  - freedesktop-sdk.bst:components/pixman.bst
  - freedesktop-sdk.bst:components/wayland.bst
  - freedesktop-sdk.bst:components/wayland-protocols.bst
  - freedesktop-sdk.bst:components/libxkbcommon.bst
  - freedesktop-sdk.bst:components/libdrm.bst
  - freedesktop-sdk.bst:components/libinput.bst
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
  - deps/udis86.bst
  - deps/egl-dispatch-stubs.bst
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

config:
  configure-commands:
    - |
      (cmake -B_builddir -H"." -G"Ninja" -DCMAKE_VERBOSE_MAKEFILE=ON \
        -DCMAKE_INSTALL_PREFIX:PATH="/usr" \
        -DCMAKE_INSTALL_LIBDIR:PATH="lib" -DCMAKE_PREFIX_PATH=/usr -DNO_XWAYLAND=ON -DNO_SYSTEMD=OFF \
        -DOPENGL_egl_LIBRARY=/usr/lib/x86_64-linux-gnu/GL/default/lib/libEGL_mesa.so.0 \
        -DOPENGL_gles3_LIBRARY=/usr/lib/x86_64-linux-gnu/GL/default/lib/libGLESv2_mesa.so.0 \
        -DOPENGL_EGL_INCLUDE_DIR=/usr/include -DOpenGL_GL_PREFERENCE=GLVND 2>&1 | tee /tmp/cfg.log) || true
      echo "===ERRORS==="
      grep -iE "error|fatal" /tmp/cfg.log | head -60 || true
      echo "===TAIL==="
      tail -n 15 /tmp/cfg.log || true
      exit 1

  build-commands:
    - cmake --build _builddir -- ${JOBS}

  install-commands:
    - env DESTDIR="/buildstream-install" cmake --build _builddir --target install

