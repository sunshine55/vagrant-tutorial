#!/bin/bash
set -e

# Install dependencies
apt-get update
apt-get install -y build-essential dkms linux-headers-$(uname -r)

# Mount Guest Additions ISO (automatically attached by Packer)
mount /dev/cdrom /mnt

# Run the installer
/mnt/VBoxLinuxAdditions.run || true

# Unmount and clean up
umount /mnt
