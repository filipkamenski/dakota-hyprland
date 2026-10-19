kind: stack

depends:
  - freedesktop-sdk.bst:components/systemd.bst
  - freedesktop-sdk.bst:components/dbus.bst
  - freedesktop-sdk.bst:components/pipewire.bst
  - freedesktop-sdk.bst:components/wireplumber.bst
  - freedesktop-sdk.bst:components/libseat.bst
  - freedesktop-sdk.bst:components/polkit.bst
  - freedesktop-sdk.bst:components/flatpak.bst
  - freedesktop-sdk.bst:components/shadow.bst
  - freedesktop-sdk.bst:components/sudo.bst
  - freedesktop-sdk.bst:components/kmod.bst
  - freedesktop-sdk.bst:components/linux.bst
  - freedesktop-sdk.bst:components/dracut.bst
  - freedesktop-sdk.bst:components/ostree.bst
  - freedesktop-sdk.bst:components/cryptsetup.bst
  - freedesktop-sdk.bst:components/libdevmapper.bst
  # R-IMG-4: the root filesystem is Btrfs. dracut's 70btrfs module installs
  # fsck.btrfs into the initramfs only if it can find it, and a deployed
  # bootc system needs the btrfs userland on the root itself.
  - freedesktop-sdk.bst:components/btrfs-progs.bst
  # R-IMG-6: installs /etc/ld.so.conf and — more importantly — publishes the
  # `integration-commands` that BuildStream runs inside the composed build
  # root (`ldconfig`, then removes /var/cache/ldconfig). That is how FDS's own
  # OCI layers get a real /etc/ld.so.cache; without it the cache is simply
  # absent and the CI gate's `ldconfig -p | grep /lib64` checks nothing.
  - freedesktop-sdk.bst:integration/ldconfig.bst
  - freedesktop-sdk.bst:extensions/mesa/mesa.bst
  - freedesktop-sdk.bst:components/networkmanager.bst
  # R-IMG-2: bootc is provided by its own element, not borrowed from a base
  # container. Its `make install-all` also drops the 51bootc dracut module and
  # /usr/lib/bootc/{bound-images.d,kargs.d,install} into the tree.
  - system/bootc.bst
  - system/system-config.bst
