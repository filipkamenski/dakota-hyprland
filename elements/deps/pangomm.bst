kind: meson

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/glib.bst
  - deps/sigc.bst
  - deps/cairomm.bst
  - deps/glibmm.bst
  - deps/mm-common.bst

sources:
  - kind: tar
    url: https://download.gnome.org/sources/pangomm/2.46/pangomm-2.46.5.tar.xz
    ref: 38ca0b050b065de4e3da0c182df657437757063bbf0c4b6c9567ddba019b1d68

variables:
  meson-local: >-
    -Dbuild-tests=false
    -Dbuild-documentation=false
    -Dmaintainer-mode=false
