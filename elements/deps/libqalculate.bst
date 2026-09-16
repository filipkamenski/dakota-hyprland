kind: autotools

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
  - freedesktop-sdk.bst:components/gettext.bst
  - freedesktop-sdk.bst:components/libtool.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/glib.bst
  - freedesktop-sdk.bst:components/icu.bst
  - freedesktop-sdk.bst:components/gmp.bst
  - freedesktop-sdk.bst:components/mpfr.bst
  - freedesktop-sdk.bst:components/libxml2.bst
  - freedesktop-sdk.bst:components/libtool.bst

sources:
  - kind: git
    url: https://github.com/Qalculate/libqalculate.git
    track: master
    ref: v5.5.0

variables:
  autotools-local: >-
    --disable-currency-logs
