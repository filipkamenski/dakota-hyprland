kind: manual

depends:
  - filename: freedesktop-sdk.bst:components/dracut.bst
    type: build
  - filename: system/system-base.bst
    type: build
  - filename: freedesktop-sdk.bst:components/linux.bst
    type: runtime

config:
  install-commands:
    - |
      KVER="$(ls /usr/lib/modules | head -n1)"
      dracut --no-compress --kmoddir "/usr/lib/modules/${KVER}" \
        --add " systemd ostree " \
        --omit " multipath" \
        --filesystems " btrfs " \
        "/usr/lib/modules/${KVER}/initramfs.img"
      mv "/usr/lib/modules/${KVER}/initramfs.img" "/usr/lib/modules/${KVER}/initramfs"
