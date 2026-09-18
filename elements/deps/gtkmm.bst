kind: meson

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/glib.bst
  - freedesktop-sdk.bst:components/at-spi2-core.bst
  - freedesktop-sdk.bst:components/gtk3.bst
  - deps/sigc.bst
  - deps/glibmm.bst
  - deps/cairomm.bst
  - deps/pangomm.bst
  - deps/atkmm.bst
  - deps/mm-common.bst

sources:
  - kind: tar
    url: https://download.gnome.org/sources/gtkmm/3.24/gtkmm-3.24.11.tar.xz
    ref: 19e383c82d5dd89db275e00b82864e90414d4c3fb3d100b2f996bcc2338a4cc7

variables:
  meson-local: >-
    -Dbuild-tests=false
    -Dbuild-demos=false
    -Dbuild-examples=false
    -Dbuild-documentation=false
    -Dmaintainer-mode=false
