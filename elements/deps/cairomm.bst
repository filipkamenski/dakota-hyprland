kind: meson

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - deps/mm-common.bst

sources:
  - kind: tar
    url: https://cairographics.org/releases/cairomm-1.14.5.tar.xz
    ref: 70136203540c884e89ce1c9edfb6369b9953937f6cd596d97c78c9758a5d48db

