 #! /bin/bash

set -euxo pipefail

version="1.4.3"

wget -O homeassistant-supervised.deb https://github.com/home-assistant/supervised-installer/releases/download/${version}/homeassistant-supervised.deb
echo "systemd.unified_cgroup_hierarchy=0" | sudo tee -a  /boot/cmdline.txt
echo "apparmor=1 security=apparmor" | sudo tee -a  /boot/cmdline.txt
if [ ! -f /boot/firmware//foo.txt ]; then
    sudo mkdir -p /boot/firmware
    cat /boot/cmdline.txt | sudo tee /boot/firmware/cmdline.txt
else
    echo "systemd.unified_cgroup_hierarchy=0" | sudo tee -a  /boot/firmware/cmdline.txt
    echo "apparmor=1 security=apparmor" | sudo tee -a  /boot/firmware/cmdline.txt
fi
sudo env "BYPASS_OS_CHECK=true" dpkg -i ./homeassistant-supervised.deb
