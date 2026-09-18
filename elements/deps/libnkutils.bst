kind: meson

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/glib.bst
  - freedesktop-sdk.bst:components/json-glib.bst

sources:
  - kind: git
    url: https://github.com/sardemff7/libnkutils.git
    track: master
    ref: 72bd7fb07f627a864e724639eea9fab6cccbd77c
