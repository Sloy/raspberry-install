#!/bin/bash

set -ev

# From https://www.htpcguides.com/install-openmediavault-raspberry-pi-nas-server-minibian/

echo "deb http://packages.openmediavault.org/public erasmus main" | sudo tee -a /etc/apt/sources.list.d/openmediavault.list
wget -O - http://packages.openmediavault.org/public/archive.key | sudo apt-key add -


sudo apt-get update
sudo apt-get install openmediavault-keyring postfix -y --force-yes
sudo apt-get install php-apc openmediavault -y --force-yes

echo "deb http://packages.omv-extras.org/debian/ erasmus main" | sudo tee -a /etc/apt/sources.list.d/omv-extras-org-kralizec.list
sudo apt-get update
sudo apt-get install openmediavault-omvextrasorg -y --force-yes

# To complete the installation you need to run the following command
# omv-initsystem

# By default the web control panel administrator account has the username 'admin' and password 'openmediavault'.
# omv-firstaid
