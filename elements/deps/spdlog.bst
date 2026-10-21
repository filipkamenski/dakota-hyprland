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
    # Real tag, not the glob `v1.x`: core bst git tracks a ref name, not a
    # pattern (see elements/system/bootc.bst), and `assert_ref()` compares the
    # track against `git tag --list`, so a glob there is `[ref-not-in-track]`.
    track: v1.15.2
    ref: v1.15.2
