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
  - freedesktop-sdk.bst:components/mesa-headers.bst
  - freedesktop-sdk.bst:extensions/mesa/mesa.bst
  - freedesktop-sdk.bst:components/libpng.bst
  - deps/libzip.bst
  - freedesktop-sdk.bst:components/file.bst
  - freedesktop-sdk.bst:components/librsvg.bst
  - compositor/hyprutils.bst

variables:
  cmake-local: -DCMAKE_PREFIX_PATH=/usr

sources:
  - kind: git
    url: https://github.com/hyprwm/hyprgraphics.git
    track: main
    ref: v0.5.1
