# Dakota Hyprland

_Dakotaraptor steini — Hyprland Edition_

An immutable, cloud-native Linux workstation running **Hyprland**, assembled entirely from source using **BuildStream 2 (`bst`)** and delivered as a bootable OCI container image (`bootc`).

Based on the [Project Bluefin Dakota](https://github.com/projectbluefin/dakota) architecture and [Freedesktop SDK](https://freedesktop-sdk.io/).

---

## Features

- **Assembled from Source via BuildStream:** No package managers or RPM/deb package layering in the base image.
- **Hyprland Wayland Compositor:** Modern dynamic tiling compositor with `waybar`, `rofi-wayland`, `swaync`, and `hyprlock`.
- **Bootable OCI (`bootc`):** Atomic OS updates, instant rollbacks, and image-based lifecycle management.
- **Cloud-Native CI/CD:** Built in the cloud using GitHub Actions with public binary artifact caching from Freedesktop SDK — no high local compute or heat required.
- **AI Agent-Friendly Architecture:** Strict `AGENTS.md` guidelines and diagnostic loops (`ujust report`, `ujust confirm`, `ujust verify`).

---

## Quick Start on a Bluefin / Dakota Laptop

To switch your running system to Dakota Hyprland:

```bash
# Switch to the image
sudo bootc switch ghcr.io/filipkamenski/dakota-hyprland:latest

# Reboot into Hyprland
sudo systemctl reboot
```

---

## Testing in a Virtual Machine (QEMU)

Build a test disk locally with [bootc-image-builder](https://github.com/osbuild/bootc-image-builder)
(requires native podman — e.g. a Bluefin/Fedora host; nested-in-CI is unsupported):

```bash
podman run --rm --privileged \
  -v ./output:/output \
  quay.io/centos-bootc/bootc-image-builder:latest \
  --type qcow2 \
  ghcr.io/filipkamenski/dakota-hyprland:latest
```

Then boot it:

```bash
just test-vm
```

Or directly via QEMU:

```bash
qemu-system-x86_64 \
  -enable-kvm \
  -m 4G \
  -smp 4 \
  -cpu host \
  -drive file=disk.qcow2,format=qcow2 \
  -device virtio-vga-gl \
  -display gtk,gl=on \
  -device intel-hda -device hda-duplex \
  -net nic,model=virtio -net user
```

---

## Development & AI Feedback Loop

1. **Reporting Issues:**
   ```bash
   ujust report
   ```
2. **Confirming Bugs on Your Hardware:**
   ```bash
   ujust confirm <issue_id>
   ```
3. **Verifying Nightly Fixes:**
   ```bash
   ujust verify <issue_id>
   ```
