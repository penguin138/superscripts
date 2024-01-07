#! /bin/bash

version="1.6.0"

wget "https://github.com/home-assistant/os-agent/releases/download/${version}/os-agent_${version}_linux_i386.deb"

sudo dpkg -i "os-agent_${version}_linux_i386.deb"

gdbus introspect --system --dest io.hass.os --object-path /io/hass/os
