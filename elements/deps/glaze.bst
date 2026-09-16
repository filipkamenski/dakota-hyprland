kind: manual

# glaze is header-only; install include/ directly (upstream cmake pulls
# test deps via FetchContent which cannot run in the build sandbox)
depends:
  - freedesktop-sdk.bst:bootstrap/bash.bst
  - freedesktop-sdk.bst:bootstrap/coreutils.bst
  - freedesktop-sdk.bst:bootstrap/symlinks.bst
  - freedesktop-sdk.bst:components/gcc-libs.bst

sources:
  - kind: git
    url: https://github.com/stephenberry/glaze.git
    track: main
    ref: v7.2.0

config:
  build-commands: []

  install-commands:
    - mkdir -p %{install-root}%{includedir}/glaze
    - cp -r include/glaze/* %{install-root}%{includedir}/glaze/
    - mkdir -p %{install-root}%{libdir}/cmake/glaze
    - |
      cat > %{install-root}%{libdir}/cmake/glaze/glaze-config.cmake <<'EOT'
      if(NOT TARGET glaze::glaze)
        add_library(glaze::glaze INTERFACE IMPORTED)
        set_target_properties(glaze::glaze PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "/usr/include")
      endif()
      EOT
    - |
      cat > %{install-root}%{libdir}/cmake/glaze/glaze-config-version.cmake <<'EOT'
      set(PACKAGE_VERSION "7.2.0")
      set(PACKAGE_VERSION_COMPATIBLE TRUE)
      EOT
