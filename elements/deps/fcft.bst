kind: meson

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/pixman.bst
  - freedesktop-sdk.bst:components/fontconfig.bst
  - freedesktop-sdk.bst:components/freetype.bst
  - deps/tllist.bst

variables:
  meson-local: |
    -Dgrapheme-shaping=disabled \
    -Drun-shaping=disabled \
    -Dsvg-backend=none \
    -Ddocs=disabled

sources:
  - kind: git
    url: https://codeberg.org/dnkl/fcft.git
    track: master
    ref: 3.3.3
