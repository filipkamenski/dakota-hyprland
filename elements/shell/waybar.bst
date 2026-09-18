kind: meson

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/gtk3.bst
  - freedesktop-sdk.bst:components/wayland.bst
  - freedesktop-sdk.bst:components/wayland-protocols.bst
  - freedesktop-sdk.bst:components/pipewire.bst
  - freedesktop-sdk.bst:components/libpulse.bst
  - freedesktop-sdk.bst:components/libnl.bst
  - freedesktop-sdk.bst:components/libinput.bst
  - freedesktop-sdk.bst:components/systemd.bst
  - freedesktop-sdk.bst:components/fmtlib.bst
  - deps/spdlog.bst
  - deps/gtkmm.bst

sources:
  - kind: git
    url: https://github.com/Alexays/Waybar.git
    track: master
    ref: 0.11.0
