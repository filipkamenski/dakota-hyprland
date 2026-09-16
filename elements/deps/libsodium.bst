kind: autotools

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
  - freedesktop-sdk.bst:components/gettext.bst
  - freedesktop-sdk.bst:components/libtool.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/autoconf-archive.bst

sources:
  - kind: git
    url: https://github.com/jedisct1/libsodium.git
    track: master
    ref: 1.0.20-RELEASE
