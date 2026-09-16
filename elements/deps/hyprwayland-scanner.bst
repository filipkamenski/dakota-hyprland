kind: cmake

# Host build tool: hyprwayland-scanner (protocol code generator)
depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - deps/pugixml.bst

config:
  build-commands: |
    echo "=== pkg-config debug ==="
    pkg-config --version
    echo "PKC: $(pkg-config --variable=pc_path pkg-config)"
    ls -la /usr/lib/pkgconfig/ | head
    ls -la /usr/share/pkgconfig/ | head -30
    find /usr -name "pugixml*" 
    pkg-config --list-all 2>/dev/null | grep -i pugi
    pkg-config --cflags pugixml || true
    true

sources:
  - kind: git
    url: https://github.com/hyprwm/hyprwayland-scanner.git
    track: main
    ref: v0.4.6
