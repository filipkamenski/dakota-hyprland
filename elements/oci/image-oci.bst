# R-IMG-5 — assemble the image as a native OCI image with freedesktop-sdk's
# `build-oci`, instead of `docker import` of a rootfs + `skopeo --format oci`
# in the workflow.
#
# This mirrors freedesktop-sdk's own OCI elements:
#   elements/oci/layers/minimal.bst   kind: compose  -> the filesystem layer
#   elements/oci/minimal-oci.bst      kind: script   -> build-oci over /layer
#   elements/oci/oci-builder.bst      kind: compose  -> the build-oci toolchain
# and it produces an OCI *image layout* (oci-layout + index.json + blobs/) in
# %{install-root}, which `skopeo copy --format oci oci:<dir> docker://...`
# pushes unchanged — the schema2/OCI mismatch that broke `bootc switch`
# (bootc-dev/bootc#1703) cannot reappear because Docker never touches it.
#
# NOT WIRED INTO CI YET: .github/workflows/buildstream.yml still builds
# image/image.bst and imports it with docker. Switching the pipeline to this
# element is its own change (the gate steps need `skopeo copy oci: -> docker-daemon`
# first, and the publish step becomes a single oci: -> ghcr push).

kind: script

build-depends:
  # Provides build-oci + python3 + PyYAML and the GNU userland it runs in
  # (FDS: oci/oci-builder.bst = compose over runtime-gnu + components/oci-builder).
  - freedesktop-sdk.bst:oci/oci-builder.bst
  # The rootfs, staged at /layer exactly like FDS stages its own layers.
  - filename: image/image.bst
    config:
      location: /layer

config:
  # Nothing to configure: build-oci reads the manifest from stdin and writes
  # the layout into the current directory.
  commands:
    - |
      cd "%{install-root}"
      build-oci <<EOF
      images:
      - os: linux
        architecture: "amd64"
        layer: /layer
        comment: "Dakota Hyprland (freedesktop-sdk base, single userspace)"
        index-annotations:
          org.opencontainers.image.ref.name: localhost/dakota-hyprland:latest
      EOF

    - |
      set -eu
      cd "%{install-root}"
      for f in oci-layout index.json; do
        [ -s "$f" ] || { echo "FATAL: build-oci produced no $f" >&2; exit 1; }
      done
      test -d blobs/sha256 || { echo "FATAL: build-oci produced no blobs/sha256" >&2; exit 1; }
      echo "oci image: $(ls blobs/sha256 | wc -l) blobs, $(du -sh . | cut -f1)"
