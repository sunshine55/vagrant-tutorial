packer {
  required_plugins {
    virtualbox = {
      version = ">= 1.0.0"
      source  = "github.com/hashicorp/virtualbox"
    }
  }
}

variable "vm_name" {
  default = "debian-lxqt"
}

source "virtualbox-iso" "debian" {
  vm_name             = var.vm_name
  guest_os_type       = "Debian_64"
  iso_url             = "http://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-12.10.0-amd64-netinst.iso"
  iso_checksum        = "ee8d8579128977d7dc39d48f43aec5ab06b7f09e1f40a9d98f2a9d149221704a"

  http_directory      = "http"
  boot_wait           = "5s"
  boot_command = [
    "<esc><wait>",
    "auto install ",
    "preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/preseed.cfg ",
    "debian-installer=en_US ",
    "locale=en_US ",
    "keyboard-configuration/xkb-keymap=us ",
    "<enter>"
  ]

  ssh_username        = "vagrant"
  ssh_password        = "vagrant"
  ssh_wait_timeout    = "30m"
  shutdown_command    = "echo 'vagrant' | sudo -S shutdown -P now"
  disk_size           = 10000
  memory              = 4096
  cpus                = 2
  guest_additions_mode = "attach"
}

build {
  sources = ["source.virtualbox-iso.debian"]

  provisioner "shell" {
    script = "scripts/setup.sh"
  }

  provisioner "shell" {
    script = "scripts/vbguest.sh"
  }
}
