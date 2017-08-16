#!/bin/bash

set -ev

curl -L https://install.pivpn.io | bash

#Now run 'pivpn add' to create the ovpn profiles.
#Run 'pivpn help' to see what else you can do!
#The install log is in /etc/pivpn.
