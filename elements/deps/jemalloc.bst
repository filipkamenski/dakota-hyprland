kind: autotools

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
  - freedesktop-sdk.bst:components/gcc.bst

sources:
  - kind: git
    url: https://github.com/jemalloc/jemalloc.git
    track: master
    ref: 5.3.0

variables:
  autotools-local: >-
    --disable-documentation
    --disable-libdl
