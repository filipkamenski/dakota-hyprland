kind: manual

depends:
  - freedesktop-sdk.bst:public-stacks/runtime-gnu.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/libglvnd.bst
  - freedesktop-sdk.bst:extensions/mesa/mesa.bst
  - freedesktop-sdk.bst:components/mesa-headers.bst

sources:
  - kind: local
    path: files

config:
  build-commands:
    - ls /usr/lib | grep -iE "EGL|GLES|GL\b" || echo NOGL
    - ls /usr/include | grep -iE "EGL|GLES" || echo NOHDR
    - "false"
