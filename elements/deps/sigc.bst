kind: meson

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - deps/mm-common.bst

sources:
  - kind: tar
    url: https://download.gnome.org/sources/libsigcplusplus/2.12/libsigcplusplus-2.12.1.tar.xz
    ref: 151e314f66e8c4cbdda04804a57f9bead5cc2f048767aacbf816d8d1f9563e64

variables:
  meson-local: >-
    -Dbuild-tests=false
    -Dbuild-examples=false
    -Dbuild-documentation=false
