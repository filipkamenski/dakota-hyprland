# R-IMG-4 — initramfs for the LUKS + Btrfs laptop root.
#
# Generated from the freedesktop-sdk tree itself: FDS ships dracut-ng 112 and
# its own bootable OSTree VM generates its initramfs the same way
# (elements/vm/boot/efi-ostree.bst: `dracut ... --add ostree
# %{install-root}/usr/lib/modules/${version}/initramfs`). No el9 dracut, no
# borrowed bootc packaging.
#
# WHY THE depmod DANCE BELOW EXISTS — do not remove it without re-reading
# freedesktop-sdk.bst:components/linux.bst: it calls `make modules_install`
# from a build root that has no depmod, so the kernel's scripts/depmod.sh
# prints "Warning: 'make modules_install' requires depmod" and exits 0. The
# kernel artifact therefore carries .ko files, modules.builtin and
# modules.order but NO modules.dep / modules.alias. FDS fills that gap in
# files/vm/prepare-image.sh (`depmod -b "$sysroot" -a "$version"`), a step
# this project does not have. Without modules.dep, libkmod inside
# dracut-install cannot resolve a single module name and dracut happily
# produces an initramfs with no dm_crypt — the historical "crypt gap".
#
# We cannot run depmod over /usr/lib/modules in place: those files come from
# dependency artifacts and are read-only in the BuildStream sandbox. So we
# mirror the tree with symlinks under /tmp and let depmod write there.

kind: manual

description: |
  Generates /usr/lib/modules/<kver>/initramfs.img with the bootc and ostree
  dracut modules plus dm_mod/dm_crypt/btrfs, and ships the depmod metadata
  the freedesktop-sdk kernel element does not produce.

build-depends:
  # The initramfs must be generated from the same tree that becomes the
  # userspace: kernel, dracut, ostree (+ /etc/dracut.conf.d/ostree.conf),
  # cryptsetup, libdevmapper, bootc (51bootc module) and the dracut drop-in
  # from system-config.bst all arrive through system-base.bst. It is a build
  # dependency, not a runtime one: only build dependencies are staged in the
  # sandbox, and the image gets system-base through image.bst directly.
  - system/system-base.bst
  # bash + coreutils for dracut's module scripts and this element
  - freedesktop-sdk.bst:public-stacks/runtime-gnu.bst
  - freedesktop-sdk.bst:components/dracut.bst
  - freedesktop-sdk.bst:components/kmod.bst
  - freedesktop-sdk.bst:components/cpio.bst
  - freedesktop-sdk.bst:components/e2fsprogs.bst
  - freedesktop-sdk.bst:components/findutils.bst
  - freedesktop-sdk.bst:components/gawk.bst
  - freedesktop-sdk.bst:components/grep.bst
  - freedesktop-sdk.bst:components/sed.bst
  - freedesktop-sdk.bst:components/util-linux.bst
  - freedesktop-sdk.bst:components/xz.bst

config:
  install-commands:
    - |
      set -eu
      install -d /tmp /var/tmp

      kver="$(ls -1 /usr/lib/modules)"
      if [ "$(printf '%s\n' "$kver" | wc -l)" -ne 1 ]; then
        echo "FATAL: expected exactly one kernel tree (bootc invariant), got:" >&2
        printf '%s\n' "$kver" >&2
        exit 1
      fi
      echo "initramfs: kernel ${kver}"

      depmod_bin="$(command -v depmod || true)"
      [ -n "$depmod_bin" ] || depmod_bin=/usr/sbin/depmod
      if [ ! -x "$depmod_bin" ]; then
        echo "FATAL: depmod not found (kmod is a build dependency)" >&2
        exit 1
      fi

      # Mirror the module tree into a writable place. Directories are real,
      # module inputs are symlinks: depmod/ libkmod resolve them by path
      # while every byte of output lands outside the read-only dependency tree.
      # Only the files depmod and dracut-install actually read are linked --
      # not vmlinuz, vmlinux, System.map or the build/source symlinks.
      stage=/tmp/kmods
      mroot="$stage/lib/modules/$kver"
      install -d "$mroot"
      ( cd "/usr/lib/modules/$kver" &&
        find . -type d -exec mkdir -p "$mroot/{}" \; &&
        find . -type f \( -name '*.ko' -o -name '*.ko.xz' -o -name '*.ko.zst' \
             -o -name 'modules.builtin' -o -name 'modules.builtin.modinfo' \
             -o -name 'modules.order' \) -print |
        while IFS= read -r f; do
          ln -s "/usr/lib/modules/$kver/${f#./}" "$mroot/${f#./}"
        done )
      "$depmod_bin" -b "$stage" -a "$kver"
      if [ ! -s "$stage/lib/modules/$kver/modules.dep" ]; then
        echo "FATAL: depmod produced no modules.dep; dracut would silently" >&2
        echo "drop dm_crypt and every other module" >&2
        exit 1
      fi
      echo "initramfs: $(wc -l < "$stage/lib/modules/$kver/modules.dep") module dependency entries"

    - |
      set -eu
      kver="$(ls -1 /usr/lib/modules)"
      stage=/tmp/kmods
      img="%{install-root}/usr/lib/modules/$kver/initramfs.img"
      install -d "%{install-root}/usr/lib/modules/$kver"

      # /etc/dracut.conf.d/10-bootc-base.conf (from system-config.bst) supplies
      # hostonly=no, the bootc module and the drivers; the flags are repeated
      # here so the module set cannot depend on a file being present.
      dracut --force --verbose --reproducible --no-machineid \
             --kmoddir "$stage/lib/modules/$kver" \
             --kver "$kver" \
             --add bootc \
             --add-drivers "dm_mod dm_crypt btrfs" \
             --xz \
             "$img"

      test -s "$img" || { echo "FATAL: dracut produced no initramfs" >&2; exit 1; }

    - |
      set -eu
      kver="$(ls -1 /usr/lib/modules)"
      stage=/tmp/kmods
      # Ship depmod's output with the image when the kernel artifact did not
      # already provide it, so on-device regeneration (bootc upgrades, kernel
      # updates) resolves modules exactly as this build did.
      if [ -e "/usr/lib/modules/$kver/modules.dep" ]; then
        echo "initramfs: kernel artifact already ships modules.dep; not duplicating"
      else
        for f in modules.dep modules.dep.bin modules.alias modules.alias.bin \
                 modules.softdep modules.symbols modules.symbols.bin modules.devname; do
          if [ -e "$stage/lib/modules/$kver/$f" ]; then
            install -Dm644 "$stage/lib/modules/$kver/$f" \
              "%{install-root}/usr/lib/modules/$kver/$f"
          fi
        done
      fi

    - |
      set -eu
      kver="$(ls -1 /usr/lib/modules)"
      img="%{install-root}/usr/lib/modules/$kver/initramfs.img"

      # Boot-readiness gate for the initramfs itself: the image is not
      # bootable unless the crypt stack, the ostree root handoff and bootc's
      # root setup are all inside it.
      if ! listing="$(lsinitrd --kver "$kver" "$img" 2>&1)"; then
        echo "FATAL: cannot list initramfs:" >&2
        printf '%s\n' "$listing" >&2
        exit 1
      fi

      # Both storage modules are asserted by their .ko name rather than by a
      # bare "btrfs" substring: fsck.btrfs is also inside the image and would
      # satisfy a loose match even if the kernel module were missing. In the
      # pinned kernel both are `module` (fdsdk-config.sh: `module DM_CRYPT`,
      # `module BTRFS_FS`), so a .ko is the correct expectation; if BTRFS_FS
      # ever becomes built in, tighten this to modules.builtin instead.
      missing=""
      # ostree/prepare-root.conf is copied in by 50ostree's install() only when
      # the file exists in the real root, so its presence here also proves
      # /usr/lib/ostree/prepare-root.conf (composefs) made it into the tree.
      for want in dm-crypt.ko btrfs.ko cryptsetup ostree-prepare-root \
                  ostree/prepare-root.conf \
                  bootc-initramfs-setup bootc-root-setup.service; do
        printf '%s\n' "$listing" | grep -q -- "$want" || missing="$missing $want"
      done
      if [ -n "$missing" ]; then
        echo "FATAL: initramfs missing:$missing" >&2
        exit 1
      fi

      echo "initramfs: OK ($(printf '%s\n' "$listing" | wc -l) entries, $(du -h "$img" | cut -f1))"
