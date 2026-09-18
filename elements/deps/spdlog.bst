kind: cmake

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/fmtlib.bst

variables:
  cmake-local: >-
    -DSPDLOG_FMT_EXTERNAL=ON
    -DSPDLOG_BUILD_EXAMPLE=OFF
    -DSPDLOG_BUILD_TESTS=OFF
    -DSPDLOG_BUILD_BENCH=OFF

sources:
  - kind: git
    url: https://github.com/gabime/spdlog.git
    track: v1.x
    ref: v1.15.2
