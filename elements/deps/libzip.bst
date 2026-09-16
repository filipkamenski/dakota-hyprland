kind: cmake

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/zlib.bst
  - freedesktop-sdk.bst:components/bzip2.bst
  - freedesktop-sdk.bst:components/xz-docs.bst
  - freedesktop-sdk.bst:components/zstd.bst
  - freedesktop-sdk.bst:components/openssl.bst

sources:
  - kind: git
    url: https://github.com/nih-at/libzip.git
    track: main
    ref: v1.11.4

variables:
  cmake-local: >-
    -DBUILD_DOC=OFF
    -DBUILD_EXAMPLES=OFF
    -DBUILD_REGRESS=OFF
    -DBUILD_TOOLS=OFF
