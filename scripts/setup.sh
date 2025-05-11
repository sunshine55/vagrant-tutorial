#!/bin/bash
set -e

apt-get update
apt-get install -y lxqt-core dwm git curl

# Install Node.js (using NodeSource)
curl -fsSL https://deb.nodesource.com/setup_23.x | bash -
apt-get install -y nodejs

# Install VSCode
wget -qO /tmp/code.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
apt-get install -y /tmp/code.deb
rm /tmp/code.deb