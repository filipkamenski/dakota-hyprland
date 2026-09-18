kind: meson

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/glib.bst
  - freedesktop-sdk.bst:components/at-spi2-core.bst
  - deps/glibmm.bst
  - deps/mm-common.bst

sources:
  - kind: tar
    url: https://download.gnome.org/sources/atkmm/2.28/atkmm-2.28.5.tar.xz
    ref: ae449192a582a2582a95e0602b15d792bbd639e836339b81ef916aa87540ac5c

variables:
  meson-local: >-
    -Dbuild-documentation=false
    -Dmaintainer-mode=false
