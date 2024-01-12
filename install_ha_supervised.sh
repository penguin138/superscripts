#! /bin/bash

version="1.4.3"

wget -O homeassistant-supervised.deb https://github.com/home-assistant/supervised-installer/releases/download/${version}/homeassistant-supervised.deb
echo "systemd.unified_cgroup_hierarchy=0" >> /boot/cmdline.txt
echo "apparmor=1 security=apparmor" >> /boot/cmdline.txt
sudo env "BYPASS_OS_CHECK=true" dpkg -i ./homeassistant-supervised.deb
