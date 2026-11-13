kind: meson

depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/wayland.bst
  - freedesktop-sdk.bst:components/wayland-protocols.bst
  - freedesktop-sdk.bst:components/fontconfig.bst
  - freedesktop-sdk.bst:components/freetype.bst
  - freedesktop-sdk.bst:components/pixman.bst
  - freedesktop-sdk.bst:components/libxkbcommon.bst
  - freedesktop-sdk.bst:bootstrap/sed.bst
  - deps/tllist.bst
  - deps/fcft.bst

sources:
  - kind: git
    url: https://codeberg.org/dnkl/foot.git
    ref: 1.28.0

variables:
  # foot 1.9.2 (the previous pin) demanded fcft ['>=2.4.0','<3.0.0'] at
  # meson.build:93 and failed against the fcft 3.3.3 pinned in deps/fcft.bst:
  #   Dependency fcft for host machine found: NO. Found 3.3.3 but need: '<3.0.0'
  # This is drift the element-pin fix exposed: the CI's auto-track used to move
  # foot and fcft to mutually-compatible heads, so the inconsistency was hidden.
  # Aligning FORWARD to 1.28.0, whose meson.build:167 wants fcft
  # ['>=3.3.1','<4.0.0'] -- satisfied by our 3.3.3 -- is the smaller change than
  # regressing fcft: fcft 2.5.1 has none of grapheme-shaping/run-shaping/
  # svg-backend (all 3.x options, which this element passes) and hard-requires
  # harfbuzz + utf8proc.
  #
  # foot 1.28.0 requires utf8proc ONLY when grapheme-clustering is enabled
  # (meson.build:156 `required: get_option('grapheme-clustering')`), and requires
  # tllist >=1.1.0. docs/tests are disabled so scdoc/libutempter are not needed.
  meson-local: >-
    -Dgrapheme-clustering=disabled
    -Dterminfo=disabled
    -Ddocs=disabled
    -Dtests=false
