kind: meson

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/glib.bst

sources:
  - kind: git
    url: https://github.com/sardemff7/libgwater.git
    track: master
    ref: 42a145150cff135be377754486c504836ddea836
