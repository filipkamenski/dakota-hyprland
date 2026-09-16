kind: cmake

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/libvorbis.bst
  - freedesktop-sdk.bst:components/libogg.bst
  - freedesktop-sdk.bst:components/libflac.bst
  - freedesktop-sdk.bst:components/opus.bst
  - freedesktop-sdk.bst:components/mpg123.bst

sources:
  - kind: git
    url: https://github.com/libsndfile/libsndfile.git
    track: master
    ref: 1.2.2

variables:
  cmake-local: >-
    -DBUILD_TESTS=OFF
    -DBUILD_PROGRAMS=OFF
    -DBUILD_EXAMPLES=OFF
