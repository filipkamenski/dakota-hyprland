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

sources:
  - kind: git
    url: https://github.com/hyprwm/Hyprland.git
    track: main
    ref: v0.56.2
    checkout-submodules: true

variables:
  cmake-local: >-
    -DCMAKE_PREFIX_PATH=/usr
    -DNO_XWAYLAND=ON
    -DNO_SYSTEMD=OFF
    -DOPENGL_egl_LIBRARY=/usr/lib/x86_64-linux-gnu/GL/default/lib/libEGL_mesa.so.0
    -DOPENGL_gles3_LIBRARY=/usr/lib/x86_64-linux-gnu/GL/default/lib/libGLESv2_mesa.so.0
    -DOPENGL_EGL_INCLUDE_DIR=/usr/include
    -DOpenGL_GL_PREFERENCE=GLVND

config:
  build-commands:
    - |
      cmake --build _builddir -- ${JOBS} 2>&1 | grep -iE "error|failed|fatal" | head -50
      exit 1
