kind: meson

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  # Wayland + GL stack
  - freedesktop-sdk.bst:components/wayland.bst
  - freedesktop-sdk.bst:components/wayland-protocols.bst
  - freedesktop-sdk.bst:components/libglvnd.bst
  # Text rendering
  - freedesktop-sdk.bst:components/freetype.bst
  - freedesktop-sdk.bst:components/fontconfig.bst
  - freedesktop-sdk.bst:components/cairo.bst
  - freedesktop-sdk.bst:components/pango.bst
  - freedesktop-sdk.bst:components/harfbuzz.bst
  - freedesktop-sdk.bst:components/libxkbcommon.bst
  # Core services
  - freedesktop-sdk.bst:components/glib.bst
  - freedesktop-sdk.bst:components/libsecret.bst
  - deps/libsodium.bst
  - deps/sdbus-cpp.bst
  - freedesktop-sdk.bst:components/pipewire.bst
  - freedesktop-sdk.bst:components/wireplumber.bst
  - freedesktop-sdk.bst:components/polkit-gobject.bst
  - freedesktop-sdk.bst:components/polkit.bst
  - freedesktop-sdk.bst:components/linux-pam.bst
  - freedesktop-sdk.bst:components/curl.bst
  # Image + media
  - freedesktop-sdk.bst:components/libwebp.bst
  - freedesktop-sdk.bst:components/libjxl.bst
  - deps/libsndfile.bst
  - freedesktop-sdk.bst:components/librsvg.bst
  # Config + misc
  - deps/libqalculate.bst
  - freedesktop-sdk.bst:components/libxml2.bst
  - deps/md4c.bst
  - freedesktop-sdk.bst:components/tomlplusplus.bst
  - deps/nlohmann-json.bst

sources:
  - kind: git
    url: https://github.com/noctalia-dev/noctalia.git
    track: main
    ref: v5.1.0

variables:
  # Release build per upstream docs: just configure release == meson setup build-release --buildtype=release
  meson-local: >-
    --buildtype=release

config:
  install-commands:
    - meson install -C build-release --no-rebuild
