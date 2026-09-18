kind: meson

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - deps/mm-common.bst

sources:
  - kind: tar
    url: https://download.gnome.org/sources/libsigc%2B%2B/2.12/libsigc%2B%2B-2.12.1.tar.xz
    ref: a9dbee323351d109b7aee074a9cb89ca3e7bcf8ad8edef1851f4cf359bd50843

variables:
  meson-local: >-
    -Dbuild-tests=false
    -Dbuild-examples=false
    -Dbuild-documentation=false
