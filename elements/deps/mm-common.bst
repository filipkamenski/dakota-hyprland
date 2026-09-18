kind: meson

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst

sources:
  - kind: git
    url: https://gitlab.gnome.org/GNOME/mm-common.git
    track: master
    ref: 1.0.8

variables:
  meson-local: >-
    -Duse-network=false

config:
  build-commands:
    - |
      # mm-common's doc step needs a libstdc++.tag; provide a stub (docs are disabled downstream anyway)
      echo "libstdc++.tag" > /dev/null
      touch libstdc++.tag
  install-commands:
    - |
      touch libstdc++.tag
      meson install -C _builddir --no-rebuild
