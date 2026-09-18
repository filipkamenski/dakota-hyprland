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
  - kind: git
    url: https://github.com/sardemff7/libgwater.git
    track: master
    ref: 42a145150cff135be377754486c504836ddea836
    directory: subprojects/libgwater
  - kind: git
    url: https://github.com/sardemff7/libnkutils.git
    track: master
    ref: 72bd7fb07f627a864e724639eea9fab6cccbd77c
    directory: subprojects/libnkutils
  - kind: git
    url: https://github.com/sardemff7/libgwater.git
    track: master
    ref: 42a145150cff135be377754486c504836ddea836
    directory: subprojects/libgwater-wayland

variables:
  meson-local: -Dcheck=disabled
