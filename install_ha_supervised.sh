#! /bin/bash

version="1.4.3"

wget -O homeassistant-supervised.deb https://github.com/home-assistant/supervised-installer/releases/download/${version}/homeassistant-supervised.deb
sudo dpkg -i ./homeassistant-supervised.deb
