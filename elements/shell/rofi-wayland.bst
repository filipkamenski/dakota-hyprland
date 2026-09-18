kind: meson

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/wayland.bst
  - freedesktop-sdk.bst:components/wayland-protocols.bst
  - freedesktop-sdk.bst:components/cairo.bst
  - freedesktop-sdk.bst:components/pango.bst
  - freedesktop-sdk.bst:components/glib.bst
  - freedesktop-sdk.bst:components/libxkbcommon.bst
  - freedesktop-sdk.bst:components/gdk-pixbuf.bst
  - freedesktop-sdk.bst:components/librsvg.bst
  - freedesktop-sdk.bst:bootstrap/sed.bst

sources:
  - kind: git
    url: https://github.com/lbonn/rofi.git
    track: master
    ref: 1.7.5+wayland3
