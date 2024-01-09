#! /bin/bash

set -euxo pipefail

# install dependencies
sudo ./install_ha_deps.sh
# install docker
curl -fsSL get.docker.com | sh
# intall ha os agent
./install_ha_os_agent.sh
# install ha supervised package
./install_ha_supervised.sh

