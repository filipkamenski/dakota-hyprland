kind: cmake

# Host build tool: hyprwayland-scanner (protocol code generator)
depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst

sources:
  - kind: git
    url: https://github.com/hyprwm/hyprwayland-scanner.git
    track: main
    ref: v0.4.6
