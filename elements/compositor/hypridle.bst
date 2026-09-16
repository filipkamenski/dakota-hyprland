kind: cmake

depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/gcc.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- freedesktop-sdk.bst:components/systemd.bst
- compositor/hyprutils.bst
- compositor/hyprlang.bst
- compositor/hyprland-protocols.bst

sources:
- kind: git
url: https://github.com/hyprwm/hypridle.git
track: main
ref: v0.1.5
