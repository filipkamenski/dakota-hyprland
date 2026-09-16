kind: manual

depends:
  - freedesktop-sdk.bst:bootstrap/bash.bst
  - freedesktop-sdk.bst:bootstrap/coreutils.bst
  - freedesktop-sdk.bst:bootstrap/grep.bst
  - freedesktop-sdk.bst:bootstrap/symlinks.bst
  - freedesktop-sdk.bst:components/gcc-libs.bst
  - freedesktop-sdk.bst:components/libglvnd.bst
  - freedesktop-sdk.bst:extensions/mesa/mesa.bst
  - freedesktop-sdk.bst:components/mesa-headers.bst

sources:
  - kind: local
    path: files

config:
  build-commands:
    - ls /usr/lib | grep -iE "EGL|GLES" || echo NOGL
    - ls /usr/lib/GL/default/lib 2>/dev/null | grep -iE "EGL|GLES" || echo NOGLPROFILE
    - ls /usr/include | grep -iE "EGL|GLES" || echo NOHDR
    - pkg-config --variable=pc_path pkg-config || true
    - "false"
