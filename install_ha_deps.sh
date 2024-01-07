#! /bin/bash

apt-get update && apt-get upgrade -y
apt-get install \
apparmor \
cifs-utils \
curl \
dbus \
jq \
libglib2.0-bin \
lsb-release \
network-manager \
nfs-common \
systemd-journal-remote \
udisks2 \
wget -y
