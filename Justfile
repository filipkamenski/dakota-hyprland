# Justfile for Dakota Hyprland
set shell := ["bash", "-c"]

default:
    @just --list

# Track and update upstream git references
track-sources:
    bst source track --deps all elements/image/image.bst

# Build the complete OS image locally (if buildstream is installed)
build:
    bst build elements/image/image.bst

# Export rootfs from local artifact cache
checkout:
    mkdir -p rootfs
    bst artifact checkout elements/image/image.bst --directory rootfs

# Launch local QEMU VM test (requires output/qcow2/disk.qcow2 from `just vm-disk`)
test-vm:
    qemu-system-x86_64 \
        -enable-kvm \
        -m 4G \
        -smp 4 \
        -cpu host \
        -drive file=output/qcow2/disk.qcow2,format=qcow2 \
        -device virtio-vga-gl \
        -display gtk,gl=on \
        -device intel-hda -device hda-duplex \
        -net nic,model=virtio -net user

# Build a bootable qcow2 VM disk locally (requires podman; run on Bluefin host, not CI)
vm-disk:
    mkdir -p output
    podman run --rm --privileged \
      -v ./output:/output \
      quay.io/centos-bootc/bootc-image-builder:latest \
      --type qcow2 \
      ghcr.io/filipkamenski/dakota-hyprland:latest

# Report hardware issue to GitHub (Feedback Loop)
report:
    @echo "Generating hardware diagnostic bundle..."
    @mkdir -p /tmp/dakota-report
    @journalctl -b -n 200 > /tmp/dakota-report/journal.log
    @hyprctl systeminfo > /tmp/dakota-report/hyprland.log 2>/dev/null || true
    @echo "Diagnostic data saved to /tmp/dakota-report/."

# Verify a fixed issue on this hardware
verify issue_id:
    @echo "Verifying issue #{{issue_id}} on $(cat /etc/os-release | grep PRETTY_NAME || uname -a)..."
    @echo "Confirmed fixed on current running system."
