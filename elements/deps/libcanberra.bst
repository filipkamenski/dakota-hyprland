kind: autotools

# libcanberra - event sound API (Hyprland dependency)
depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/gettext.bst
  - freedesktop-sdk.bst:components/libtool.bst
  - freedesktop-sdk.bst:components/glib.bst
  - freedesktop-sdk.bst:components/alsa-lib.bst
  - freedesktop-sdk.bst:components/libpulse.bst
  - freedesktop-sdk.bst:components/libvorbis.bst

sources:
  - kind: tar
    url: https://0pointer.de/lennart/projects/libcanberra/libcanberra-0.30.tar.xz
    ref: c2b671e67e0c288a69fc33dc1b6f1b534d07882c2aceed37004bf48c601afa72

variables:
  autotools-local: >-
    --disable-gtk3
    --disable-tdb
    --disable-lynx
