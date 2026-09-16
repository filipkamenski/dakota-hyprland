kind: manual

# FDS 26.08 strips glvnd's EGL/GLES dispatch libs; provide symlinks to the
# mesa backend libs so FindOpenGL (libEGL/libGLESv2) succeeds at build time.
depends:
  - freedesktop-sdk.bst:bootstrap/coreutils.bst
  - freedesktop-sdk.bst:bootstrap/bash.bst
  - freedesktop-sdk.bst:bootstrap/coreutils.bst
  - freedesktop-sdk.bst:bootstrap/symlinks.bst
  - freedesktop-sdk.bst:components/gcc-libs.bst
  - freedesktop-sdk.bst:extensions/mesa/mesa.bst

sources:
  - kind: local
    path: elements/deps/egl-dispatch-stubs/files

config:
  build-commands: []

  install-commands:
    - install -d %{install-root}%{libdir}
    - ln -sf ../../x86_64-linux-gnu/GL/default/lib/libEGL_mesa.so.0 %{install-root}%{libdir}/libEGL.so
    - ln -sf ../../x86_64-linux-gnu/GL/default/lib/libEGL_mesa.so.0 %{install-root}%{libdir}/libEGL.so.1
    - ln -sf ../../x86_64-linux-gnu/GL/default/lib/libGLESv2_mesa.so.0 %{install-root}%{libdir}/libGLESv2.so
    - ln -sf ../../x86_64-linux-gnu/GL/default/lib/libGLESv2_mesa.so.0 %{install-root}%{libdir}/libGLESv2.so.2
