kind: manual

depends:
  - freedesktop-sdk.bst:bootstrap/bash.bst
  - freedesktop-sdk.bst:bootstrap/coreutils.bst
  - freedesktop-sdk.bst:components/gcc-libs.bst

sources:
  - kind: git
    url: https://github.com/nothings/stb.git
    track: master
    ref: 904aa67e1e2d1dec92959df63e700b166d5c1022

config:
  install-commands:
    - |
      # header-only library; upstream has no install target
      install -d %{install-root}%{includedir}/stb
      cp stb_image_resize2.h stb_image.h stb_image_write.h stb_truetype.h %{install-root}%{includedir}/stb/ 2>/dev/null || cp stb*.h %{install-root}%{includedir}/stb/
