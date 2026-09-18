kind: meson

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/gtk3.bst
  - freedesktop-sdk.bst:components/gobject-introspection.bst
  - freedesktop-sdk.bst:components/wayland.bst

sources:
  - kind: tar
    url: https://github.com/wmww/gtk-layer-shell/archive/v0.9.0/gtk-layer-shell-0.9.0.tar.gz
    ref: 3809e5565d9ed02e44bb73787ff218523e8760fef65830afe60ea7322e22da1c

variables:
  meson-local: >-
    -Dtests=false
    -Dexamples=false
    -Ddocs=false
    -Dintrospection=false
    -Dvapi=false