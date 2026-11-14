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
# mirror the tree with symlinks under a staging dir and let depmod write there.
#
# TWO BUILD-SANDBOX FACTS — learned the hard way in runs 43425111451 and
# 43430330226, do not re-learn them:
#
#   1. install-commands are NOT given build-depends. This element used to
#      declare `build-depends:` only, so its install sandbox contained no
#      dependency tree at all: /usr/lib/modules did not exist (`ls -la` of it
#      printed nothing at all). It must use `depends:`. It has no
#      build-commands, so a build-depends list was useless anyway.
#
#   2. The install sandbox root is READ-ONLY; only %{install-root} is writable.
#      The previous version staged into /tmp/kmods and opened with
#      `install -d /tmp /var/tmp`, which fails with NO output whatsoever — the
#      silent death that made the first failure so hard to read. All staging now
#      lives under %{install-root}/.kmods, dracut/lsinitrd get a TMPDIR there,
#      and both dirs are deleted before the artifact is cached so no symlink
#      into the read-only dependency tree ships in the image.

kind: manual

description: |
  Generates /usr/lib/modules/<kver>/initramfs.img with the bootc and ostree
  dracut modules plus dm_mod/dm_crypt/btrfs, and ships the depmod metadata
  the freedesktop-sdk kernel element does not produce.

depends:
  # RUNTIME dependencies, deliberately not build-depends — install-commands only
  # see these (sandbox fact 1). The initramfs must be generated from the same
  # tree that becomes the userspace: kernel, dracut, ostree
  # (+ /etc/dracut.conf.d/ostree.conf), cryptsetup, libdevmapper, bootc
  # (51bootc module) and the dracut drop-in from system-config.bst all arrive
  # through system-base.bst. The image receives system-base through image.bst as
  # well, so this adds nothing to the image that was not already in it.
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
      set -eux
      # %{install-root} is the only writable path in an install sandbox.
      stage="%{install-root}/.kmods"
      tmp="%{install-root}/.kmodtmp"
      install -d "$stage" "$tmp"
      export TMPDIR="$tmp"

      echo "initramfs: /usr/lib/modules contains:"
      ls -la /usr/lib/modules 2>&1 || true
      kver="$(ls -1 /usr/lib/modules)"
      # An empty kver is NOT caught by a line count: `printf '%s\n' ""` is one
      # line, so wc -l would report 1 while every path collapsed to
      # /usr/lib/modules//...
      if [ -z "$kver" ] || [ "$(printf '%s\n' "$kver" | wc -l)" -ne 1 ]; then
        echo "FATAL: expected exactly one kernel tree (bootc invariant), got:" >&2
        printf '[%s]\n' "$kver" >&2
        exit 1
      fi
      echo "initramfs: kernel ${kver}"

      depmod_bin="$(command -v depmod || true)"
      [ -n "$depmod_bin" ] || depmod_bin=/usr/sbin/depmod
      if [ ! -x "$depmod_bin" ]; then
        echo "FATAL: depmod not found (kmod is a dependency)" >&2
        exit 1
      fi

      # Mirror the module tree into the writable stage. Directories are real,
      # module inputs are symlinks: depmod/libkmod resolve them by path while
      # every byte of output lands outside the read-only dependency tree.
      # Only the files depmod and dracut-install actually read are linked --
      # not vmlinuz, vmlinux, System.map or the build/source symlinks.
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

      "$depmod_bin" -b "$stage" -a "$kver" 2>&1 || { dep_rc=$?; \
        echo "FATAL: depmod exited ${dep_rc} (see its output above)" >&2; exit 1; }
      if [ ! -s "$stage/lib/modules/$kver/modules.dep" ]; then
        echo "FATAL: depmod produced no modules.dep; dracut would silently" >&2
        echo "drop dm_crypt and every other module" >&2
        echo "--- staged module tree was:" >&2
        find "$mroot" -maxdepth 2 2>/dev/null | head -30 >&2 || true
        exit 1
      fi
      echo "initramfs: $(wc -l < "$stage/lib/modules/$kver/modules.dep") module dependency entries"

    - |
      set -eux
      kver="$(ls -1 /usr/lib/modules)"
      stage="%{install-root}/.kmods"
      tmp="%{install-root}/.kmodtmp"
      export TMPDIR="$tmp"
      img="%{install-root}/usr/lib/modules/$kver/initramfs.img"
      install -d "%{install-root}/usr/lib/modules/$kver"

      # --- library visibility, learned from run 43500181177 -----------------
      # That run published an initramfs containing systemd, systemd-executor,
      # both systemd shared libs and the loader -- but NO libc.so.6. PID 1
      # therefore exited 127 and the kernel panicked ("Attempted to kill init!
      # exitcode=0x00007f00", decoded from the drm_panic QR on the laptop).
      #
      # The libraries were in the sandbox; dracut could not RESOLVE them.
      # freedesktop-sdk keeps them in the multiarch dir /usr/lib/x86_64-linux-gnu,
      # which is reachable only through the ldconfig cache -- and this project
      # generates that cache in the compose step, which runs AFTER this element.
      # The sandbox's /etc/ld.so.conf holds only `include ld.so.conf.d/*.conf`
      # and /etc/ld.so.conf.d does not exist, so the loader has no path to that
      # directory at all. Hand dracut the search path explicitly (--libdirs) and
      # ship a real cache + conf in the initramfs so on-device regeneration
      # (bootc upgrades, kernel updates) resolves exactly as this build does.
      libdirs="/usr/lib/x86_64-linux-gnu /usr/lib/x86_64-linux-gnu/systemd /usr/lib64 /usr/lib"
      install -d "$stage/etc/ld.so.conf.d"
      printf '%s\n' $libdirs > "$stage/etc/ld.so.conf"
      printf '%s\n' $libdirs > "$stage/etc/ld.so.conf.d/00-dakota-libs.conf"
      if command -v ldconfig >/dev/null 2>&1; then
        # -f: use this conf instead of the sandbox's; -C: write the cache here,
        # because only %{install-root} is writable in an install sandbox.
        ldconfig -f "$stage/etc/ld.so.conf" -C "$stage/etc/ld.so.cache" \
          > "$stage/ldconfig.log" 2>&1 || true
        head -5 "$stage/ldconfig.log" || true
      fi
      echo "initramfs: library resolution diagnostics"
      echo "  /etc/ld.so.conf: $(cat /etc/ld.so.conf 2>&1)"
      echo "  /etc/ld.so.conf.d: $(ls /etc/ld.so.conf.d 2>&1)"
      echo "  ldconfig -p entries: $(ldconfig -p 2>/dev/null | wc -l)"
      echo "  sandbox libc: $(ls /usr/lib/x86_64-linux-gnu/libc.so.6 2>&1)"
      echo "  generated cache: $(ls -la "$stage/etc/ld.so.cache" 2>&1)"
      echo "  multiarch dir: $(ls /usr/lib/x86_64-linux-gnu 2>/dev/null | wc -l) entries"

      # /etc/dracut.conf.d/10-bootc-base.conf (from system-config.bst) supplies
      # hostonly=no, the bootc module and the drivers; the flags are repeated
      # here so the module set cannot depend on a file being present.
      # --tmpdir keeps dracut out of the read-only sandbox root.
      # --libdirs is the actual fix for the missing libc: it tells dracut-install
      # where to look for sonames when the ldconfig cache cannot answer.
      dracut --force --verbose --reproducible --no-machineid \
             --tmpdir "$tmp" \
             --kmoddir "$stage/lib/modules/$kver" \
             --kver "$kver" \
             --libdirs "$libdirs" \
             --include "$stage/etc/ld.so.conf" /etc/ld.so.conf \
             --include "$stage/etc/ld.so.conf.d" /etc/ld.so.conf.d \
             --include "$stage/etc/ld.so.cache" /etc/ld.so.cache \
             --add bootc \
             --add-drivers "dm_mod dm_crypt btrfs" \
             --xz \
             "$img"

      test -s "$img" || { echo "FATAL: dracut produced no initramfs" >&2; exit 1; }

    - |
      set -eux
      kver="$(ls -1 /usr/lib/modules)"
      stage="%{install-root}/.kmods"
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
      set -eux
      kver="$(ls -1 /usr/lib/modules)"
      img="%{install-root}/usr/lib/modules/$kver/initramfs.img"
      export TMPDIR="%{install-root}/.kmodtmp"

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
      #
      # bootc's helper is usr/lib/bootc/initramfs-setup -- NOT
      # "bootc-initramfs-setup", which this list asserted until run 43443916696
      # failed the gate on it while lsinitrd showed the file present under its
      # real path. Read the name off the generated image, not off memory.
      for want in dm-crypt.ko btrfs.ko cryptsetup ostree-prepare-root \
                  ostree/prepare-root.conf \
                  bootc/initramfs-setup bootc-root-setup.service; do
        printf '%s\n' "$listing" | grep -q -- "$want" || missing="$missing $want"
      done
      if [ -n "$missing" ]; then
        echo "FATAL: initramfs missing:$missing" >&2
        exit 1
      fi

      # --- boot-faithful closure check, added after run 43500181177 ----------
      # File presence proves nothing about RUNNABILITY. That run shipped an
      # initramfs in which every name asserted above was present -- dm-crypt.ko,
      # cryptsetup, ostree-prepare-root, bootc/initramfs-setup -- and which still
      # panicked at PID 1 with exitcode 0x7f00, because libc.so.6 was not in it.
      # So: extract the initramfs and let ITS OWN dynamic loader resolve the
      # libraries of the binaries PID 1 will execute. This is the check that
      # fails loudly the next time the base libs go missing.
      unpack="%{install-root}/.initrdcheck"
      rm -rf "$unpack"; install -d "$unpack"
      if ! ( cd "$unpack" && xz -dc "$img" | cpio -idm --quiet ); then
        echo "FATAL: cannot extract the initramfs for the closure check" >&2
        exit 1
      fi
      loader="/lib64/ld-linux-x86-64.so.2"
      if [ ! -e "$unpack$loader" ]; then
        echo "FATAL: the initramfs has no dynamic loader at $loader" >&2
        exit 1
      fi
      unresolved=""
      for b in /init /usr/lib/systemd/systemd /usr/lib/systemd/systemd-executor; do
        if [ ! -e "$unpack$b" ]; then
          unresolved="$unresolved $b(absent)"
          continue
        fi
        # The chroot makes the loader see exactly what it will see at boot: this
        # initramfs's own /etc/ld.so.cache and /etc/ld.so.conf.d. It is faithful
        # because this build runs on x86_64, like the target. If the sandbox
        # forbids chroot, fall back to a weaker but still real argument check.
        if out="$(chroot "$unpack" "$loader" --list "$b" 2>&1)"; then
          if printf '%s\n' "$out" | grep -q "not found"; then
            unresolved="$unresolved $b"
            echo "initramfs: $b does not resolve:" >&2
            printf '%s\n' "$out" | grep "not found" >&2 || true
          fi
        else
          echo "initramfs: chroot unavailable in this sandbox; using the" >&2
          echo "           weaker SONAME-presence fallback for $b" >&2
          for so in libc.so.6 libgcc_s.so.1 libsystemd-shared-261.so \
                    libsystemd-core-261.so; do
            if ! find "$unpack" -name "$so" | grep -q .; then
              unresolved="$unresolved $b($so absent)"
            fi
          done
        fi
      done
      # The exact regression: the C library itself.
      if ! find "$unpack" -name 'libc.so.6' | grep -q .; then
        unresolved="$unresolved libc.so.6(absent)"
      fi
      if [ -n "$unresolved" ]; then
        echo "FATAL: this initramfs cannot run PID 1; unresolved:$unresolved" >&2
        echo "--- lib dirs in the initramfs:" >&2
        ls "$unpack/usr/lib/x86_64-linux-gnu" >&2 || true
        ls "$unpack/usr/lib/x86_64-linux-gnu/systemd" >&2 || true
        exit 1
      fi
      rm -rf "$unpack"

      echo "initramfs: OK ($(printf '%s\n' "$listing" | wc -l) entries, $(du -h "$img" | cut -f1))"

      # Staging must not ship: .kmods holds symlinks into the read-only
      # dependency tree, which would dangle inside the finished image.
      rm -rf "%{install-root}/.kmods" "%{install-root}/.kmodtmp"
