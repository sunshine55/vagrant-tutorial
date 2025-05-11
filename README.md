# VirtualBox creation with Packer

Demonstrate remote development with type-2 hypervisor VMs.

## Prerequisites

VScode, VirtualBox, Packer

## Usage

```bash
# Checkout the necessary branch in a separate folder, i.e.: practice with Vagrant
mkdir vm-automation-practice && cd vm-automation-practice
mkdir packer && cd packer
git init
git remote add origin git@github.com:sunshine55/vm-automation-practice.git
git fetch origin packer
git checkout packer

# Then follow the README on the checked out branch
```