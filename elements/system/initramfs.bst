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
  # readelf, for the closure gate: it reads the NEEDED sonames of every ELF in
  # the generated initramfs. Build-only -- this element's artifact is the
  # initramfs image itself, so nothing binutils installs reaches the OS.
  - freedesktop-sdk.bst:components/binutils.bst

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

      # --- install the base libraries through dracut's OWN glob ------------
      # Run 43550529102 showed the exact mechanism, in dracut's own words:
      #     dracut-install: ERROR: could not locate dependency libc.so.6
      #                     requested by '/usr/lib/x86_64-linux-gnu/libgcc_s.so.1'
      #     dracut[E]: FAILED: dracut-install -D ... -l /usr/lib/x86_64-linux-gnu/libbpf.so.1
      # Two things follow. First, `--include` on a *.so is NOT a copy: dracut
      # routes it through the library installer (-l), which resolves the file's
      # own NEEDED entries, cannot find them (the sandbox has no /etc/ld.so.cache
      # and no /etc/ld.so.conf.d, so `ldconfig -p` is empty), and installs
      # nothing. Second, `inst_libdir_file` (dracut-functions.sh:1338) does NOT
      # resolve anything: it globs every directory in $libdirs for a file named
      # exactly <soname> and copies it -- which is why libbpf, libkmod, libzstd,
      # liblzma, libnss_* and libgcc_s DID reach the initramfs under --libdirs.
      # Nothing was simply asking for libc.
      #
      # So ask, from a module of our own. dracut_module_path() looks in
      # ${dracutbasedir}/modules.d/??<name>, so stage a symlinked dracutbasedir
      # (the install sandbox root is read-only, /usr/lib/dracut cannot be
      # written) and point dracut at it, re-sourcing the project's real conf so
      # hostonly=no and the bootc module are not lost.
      libdirs="/usr/lib/x86_64-linux-gnu /usr/lib/x86_64-linux-gnu/systemd /usr/lib64 /usr/lib"
      export LD_LIBRARY_PATH="$libdirs"
      sysdracut="$stage/dracut"
      install -d "$sysdracut/modules.d"
      for f in /usr/lib/dracut/*; do
        [ "$(basename "$f")" = modules.d ] && continue
        ln -sfn "$f" "$sysdracut/$(basename "$f")"
      done
      for f in /usr/lib/dracut/modules.d/*; do
        ln -sfn "$f" "$sysdracut/modules.d/$(basename "$f")"
      done
      install -d "$sysdracut/modules.d/99dakota-base-libs"
      cat > "$sysdracut/modules.d/99dakota-base-libs/module-setup.sh" <<'EOM'
      #!/bin/bash
      # Sourced by dracut (`source module-setup.sh`), so the leading indentation
      # is harmless -- but every line MUST stay indented at least six spaces or it
      # terminates the YAML block scalar and BuildStream rejects the element with
      # "Severely malformed YAML" (run 43552052934, line 174).
      check() { return 0; }
      depends() { return 0; }
      install() {
          # Sonames taken from readelf -d over every binary in the initramfs this
          # project previously published: 32 of 36 required sonames were absent,
          # including cryptsetup's libblkid/libcrypto and ostree's libcomposefs.
          inst_libdir_file \
              libc.so.6 libm.so.6 libresolv.so.2 libpthread.so.0 libdl.so.2 librt.so.1 \
              libgcc_s.so.1 libacl.so.1 libattr.so.1 libblkid.so.1 libmount.so.1 \
              libuuid.so.1 libsmartcols.so.1 libselinux.so.1 libpcre2-8.so.0 \
              libsystemd.so.0 libudev.so.1 libcom_err.so.2 libe2p.so.2 libext2fs.so.2 \
              libcomposefs.so.1 libcrypt.so.2 libcrypto.so.3 libelf.so.1 \
              libglib-2.0.so.0 libgio-2.0.so.0 libgobject-2.0.so.0 libkeyutils.so.1 \
              liblzo2.so.2 libreadline.so.8 libtinfo.so.6 libtinfow.so.6 liburcu.so.8 \
              libz.so.1 libzstd.so.1 liblzma.so.5 liblz4.so.1 libbpf.so.1 libkmod.so.2 \
              libnss_files.so.2 libnss_dns.so.2 libnss_compat.so.2
      }
      EOM
      chmod +x "$sysdracut/modules.d/99dakota-base-libs/module-setup.sh"
      printf 'dracutbasedir="%s"\n' "$sysdracut" > "$stage/dracut.conf"
      for f in /etc/dracut.conf /etc/dracut.conf.d/*.conf; do
        [ -f "$f" ] && printf '. %s\n' "$f" >> "$stage/dracut.conf"
      done
      printf 'dracutbasedir="%s"\n' "$sysdracut" >> "$stage/dracut.conf"
      echo "initramfs: staged dracutbasedir at $sysdracut with a base-libs module"

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
      # hostonly=no, the bootc module and the drivers. --conf is passed because
      # it REPLACES the default configuration chain, so the staged conf re-sources
      # those files itself and then re-asserts dracutbasedir last, so the staged
      # module tree wins.
      # --tmpdir keeps dracut out of the read-only sandbox root.
      # --libdirs is load-bearing: inst_libdir_file in our module globs $libdirs.
      dracut --force --verbose --reproducible --no-machineid \
             --tmpdir "$tmp" \
             --kmoddir "$stage/lib/modules/$kver" \
             --kver "$kver" \
             --conf "$stage/dracut.conf" \
             --libdirs "$libdirs" \
             --include "$stage/etc/ld.so.conf" /etc/ld.so.conf \
             --include "$stage/etc/ld.so.conf.d" /etc/ld.so.conf.d \
             --include "$stage/etc/ld.so.cache" /etc/ld.so.cache \
             --add "bootc dakota-base-libs" \
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
      # stage is set by the dracut block, but each `install-commands` entry runs
      # as its own shell: without this line `set -u` aborts the gate with
      # "stage: unbound variable" one step after the extraction (run 43550529102).
      stage="%{install-root}/.kmods"
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

      # --- complete closure check, replacing the original file-presence gate --
      # File presence proves nothing about RUNNABILITY. Run 43500181177 shipped an
      # initramfs in which every name asserted above was present and which still
      # panicked at PID 1 with exitcode 0x7f00, because libc.so.6 was not in it.
      # An earlier revision of this gate then checked four sonames on three
      # binaries, which would ALSO have passed a tree missing cryptsetup's and
      # ostree's dependencies. So: extract the initramfs, read the NEEDED sonames
      # of EVERY ELF inside it, and require each one to be present as a file.
      #
      # readelf does the reading -- hence binutils in depends. It is a build-only
      # dependency: this element's artifact is the initramfs image alone, so
      # nothing binutils installs reaches the OS.
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

      needed="$stage/needed.txt"
      : > "$needed"
      scanned=0
      find "$unpack" -type f 2>/dev/null | while IFS= read -r f; do
        head -c 4 "$f" 2>/dev/null | grep -q ELF || continue
        readelf -d "$f" 2>/dev/null | grep NEEDED | grep -o '\[.*\]' | tr -d '[]' >> "$needed"
      done
      sort -u "$needed" -o "$needed"
      scanned="$(wc -l < "$needed")"
      echo "initramfs: $scanned distinct sonames required by the binaries inside"

      unresolved=""
      while IFS= read -r so; do
        [ -n "$so" ] || continue
        find "$unpack" -name "$so" 2>/dev/null | grep -q . || unresolved="$unresolved $so"
      done < "$needed"
      if [ -n "$unresolved" ]; then
        echo "FATAL: this initramfs cannot run PID 1; absent sonames:$unresolved" >&2
        echo "--- what it does ship in the lib dirs:" >&2
        ls "$unpack/usr/lib/x86_64-linux-gnu" >&2 || true
        ls "$unpack/usr/lib/x86_64-linux-gnu/systemd" >&2 || true
        exit 1
      fi
      rm -rf "$unpack"

      echo "initramfs: closure OK ($scanned sonames, all present)"

      echo "initramfs: OK ($(printf '%s\n' "$listing" | wc -l) entries, $(du -h "$img" | cut -f1))"

      # Staging must not ship: .kmods holds symlinks into the read-only
      # dependency tree, which would dangle inside the finished image.
      rm -rf "%{install-root}/.kmods" "%{install-root}/.kmodtmp"
