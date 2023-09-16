#!/bin/bash

# Update and upgrade the repositories and the packages
sudo apt-get -y update && sudo apt-get -y upgrade

# Install the vpnc-manager package in order to use vpnc
sudo apt install -y network-manager-vpnc-gnome

# Write and output the VPN connection details to the configuration file
sudo cat > /etc/vpnc/ull.conf << EOF
IPSec gateway vpn.ull.es
IPSec ID ULL
IPSec secret usu4r10s
EOF
clear

# Show the user that the installation has been completed 
echo "Installation finished. Press enter to exit."
read -r junk
