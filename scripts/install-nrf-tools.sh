#!/bin/bash

echo "Installing nrf-command-line-tools"

set -e

wget https://github.com/NordicSemiconductor/nrf-udev/releases/download/v1.0.1/nrf-udev_1.0.1-all.deb

apt-get install -y udev && dpkg -i nrf-udev_1.0.1-all.deb

wget https://nsscprodmedia.blob.core.windows.net/prod/software-and-other-downloads/desktop-software/nrf-command-line-tools/sw/versions-10-x-x/10-24-2/nrf-command-line-tools_10.24.2_amd64.deb

/lib/systemd/systemd-udevd --daemon && dpkg -i nrf-command-line-tools_10.24.2_amd64.deb &&
  apt install -y /opt/nrf-command-line-tools/share/JLink_Linux_V794e_x86_64.deb --fix-broken

nrfutil install device
