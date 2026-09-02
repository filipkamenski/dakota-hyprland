kind: meson

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/wayland.bst

sources:
  - kind: git_repo
    url: https://github.com/hyprwm/hyprland-protocols.git
    track: main
    ref: v0.4.0
