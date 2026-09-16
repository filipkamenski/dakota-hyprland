kind: cmake

depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/gcc.bst
- freedesktop-sdk.bst:components/pkg-config.bst

sources:
- kind: git
url: https://github.com/hyprwm/hyprutils.git
track: main
ref: v0.2.7
