kind: meson

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst

# mm-common's libstdc++.tag doc cross-reference file: with use-network=false
# the build copies it from doctags/ in the source dir, so we overlay a stub
# (nothing downstream consumes the tags — documentation is disabled everywhere).
sources:
  - kind: git
    url: https://gitlab.gnome.org/GNOME/mm-common.git
    track: master
    ref: 1.0.8
  - kind: local
    path: files/mm-common-doctags
    directory: doctags

variables:
  meson-local: >-
    -Duse-network=false
