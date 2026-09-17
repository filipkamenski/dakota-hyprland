kind: meson

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/wayland.bst
  - freedesktop-sdk.bst:components/wayland-protocols.bst
  - freedesktop-sdk.bst:components/libglvnd.bst
  - freedesktop-sdk.bst:components/freetype.bst
  - freedesktop-sdk.bst:components/fontconfig.bst
  - freedesktop-sdk.bst:components/cairo.bst
  - freedesktop-sdk.bst:components/pango.bst
  - freedesktop-sdk.bst:components/harfbuzz.bst
  - freedesktop-sdk.bst:components/libxkbcommon.bst
  - freedesktop-sdk.bst:components/glib.bst
  - freedesktop-sdk.bst:components/tomlplusplus.bst
  - deps/nlohmann-json.bst
  - freedesktop-sdk.bst:components/libwebp.bst
  - freedesktop-sdk.bst:components/librsvg.bst
  - freedesktop-sdk.bst:components/libxml2.bst
  - freedesktop-sdk.bst:components/libepoxy.bst
  - deps/wlroots.bst
  - shell/greetd.bst

sources:
  - kind: git
    url: https://github.com/noctalia-dev/noctalia-greeter.git
    track: main

variables:
  meson-local: >-
    --buildtype=release
