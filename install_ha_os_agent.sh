#! /bin/bash

version="1.4.3"

wget "https://github.com/home-assistant/os-agent/releases/download/${version}/os-agent_${version}_linux_armv7.deb"

sudo dpkg -i "os-agent_${version}_linux_armv7.deb"

gdbus introspect --system --dest io.hass.os --object-path /io/hass/os
