kind: meson

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst

sources:
  - kind: tar
    url: https://github.com/open-source-parsers/jsoncpp/archive/refs/tags/1.9.6.tar.gz
    ref: f93b6dd7ce796b13d02c108bc9f79812245a82e577581c4c9aabe57075c90ea2

variables:
  meson-local: >-
    -Dtests=false
