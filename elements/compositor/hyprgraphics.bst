kind: cmake

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/libdrm.bst
  - freedesktop-sdk.bst:components/pixman.bst
  - freedesktop-sdk.bst:components/cairo.bst
  - freedesktop-sdk.bst:components/pango.bst
  - freedesktop-sdk.bst:components/jpeg.bst
  - freedesktop-sdk.bst:components/libwebp.bst
  - freedesktop-sdk.bst:components/libjxl.bst
  - freedesktop-sdk.bst:components/libpng.bst
  - deps/libzip.bst
  - compositor/hyprutils.bst

sources:
  - kind: git
    url: https://github.com/hyprwm/hyprgraphics.git
    track: main
    ref: v0.5.1
