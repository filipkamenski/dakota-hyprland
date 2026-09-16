kind: cmake

# Host build tool: hyprwayland-scanner (protocol code generator)
depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - deps/pugixml.bst

sources:
  - kind: git
    url: https://github.com/hyprwm/hyprwayland-scanner.git
    track: main
    ref: v0.4.6

environment:
  PKG_CONFIG_PATH: /usr/lib/pkgconfig:/usr/share/pkgconfig:/usr/lib64/pkgconfig
