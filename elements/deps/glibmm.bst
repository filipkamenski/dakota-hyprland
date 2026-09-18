kind: meson

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/glib.bst
  - freedesktop-sdk.bst:components/libffi.bst
  - deps/sigc.bst
  - deps/mm-common.bst

sources:
  - kind: tar
    url: https://download.gnome.org/sources/glibmm/2.66/glibmm-2.66.8.tar.xz
    ref: ''

variables:
  meson-local: >-
    -Dbuild-tests=false
    -Dbuild-examples=false
    -Dbuild-documentation=false
    -Dmaintainer-mode=false
