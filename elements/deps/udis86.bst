kind: autotools

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/python3.bst

sources:
  - kind: git
    url: https://github.com/canihavesomecoffee/udis86.git
    track: master

variables:
  autotools-local: >-
    --disable-static
    --enable-shared
