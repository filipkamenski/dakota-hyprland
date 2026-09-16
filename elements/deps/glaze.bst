kind: cmake

# Header-only JSON library (Hyprland dependency, normally FetchContent'd)
depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst

sources:
  - kind: git
    url: https://github.com/stephenberry/glaze.git
    track: main
    ref: v7.2.0
