kind: manual

depends:
  - freedesktop-sdk.bst:bootstrap/bash.bst
  - freedesktop-sdk.bst:bootstrap/coreutils.bst
  - freedesktop-sdk.bst:components/gcc-libs.bst

sources:
  - kind: git
    url: https://github.com/nothings/stb.git
    ref: 904aa67e1e2d1dec92959df63e700b166d5c1022

config:
  install-commands:
    - |
      # header-only library; upstream has no install target
      install -d %{install-root}%{includedir}/stb
      cp stb_image_resize2.h stb_image.h stb_image_write.h stb_truetype.h %{install-root}%{includedir}/stb/ 2>/dev/null || cp stb*.h %{install-root}%{includedir}/stb/
      # The fallback above discards stderr, so a missing header is invisible --
      # exactly that shipped a headerless stb in run 43308168912 (the CI's
      # auto-track had moved this element onto a master head without
      # stb_image_resize2.h) and noctalia-greeter's meson only failed two hours
      # later with "stb/stb_image_resize2.h not found". Assert it instead: a
      # wrong ref must fail here, in seconds, with the reason named.
      test -f %{install-root}%{includedir}/stb/stb_image_resize2.h
