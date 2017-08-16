#!/bin/bash

set -ev

# From https://www.htpcguides.com/install-sonarr-raspberry-pi-2-latest-stable-mono/

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
sudo apt-get update

sudo apt-get install apt-transport-https -y --force-yes
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys FDA5DFFC
echo "deb https://apt.sonarr.tv/ master main" | sudo tee -a /etc/apt/sources.list.d/sonarr.list
sudo apt-get update
sudo apt-get install nzbdrone -y
sudo chown -R pi:pi /opt/NzbDrone

sudo cp nzbdrone.init /etc/init.d/nzbdrone
sudo chmod +x /etc/init.d/nzbdrone
sudo update-rc.d nzbdrone defaults 98
sudo reboot
