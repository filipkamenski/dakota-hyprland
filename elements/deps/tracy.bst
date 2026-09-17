kind: manual

# Tracy profiler client - Hyprland compiles subprojects/tracy/public/TracyClient.cpp
# We only need the sources staged; no build of tracy itself.
depends:
  - freedesktop-sdk.bst:bootstrap/coreutils.bst
  - freedesktop-sdk.bst:bootstrap/symlinks.bst

sources:
  - kind: git
    url: https://github.com/wolfpld/tracy.git
    track: master
    ref: 05cceee0df3b8d7c6fa87e9638af311dbabc63cb
