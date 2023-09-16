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

# Ask the user if the saving of the VPN login details is wanted
echo "Now you will be asked for your VPN login details in order to automate the process of loggin in."
read -r -p "Do you agree with that? [y]es, [n]o: " userchose1

# If the user wants to store the login details, execute the save-login.sh script, if not, end the script
if [ "$userchose1" = 'y' ]
then
	echo "\n"
	sudo bash save-login.sh

	# Ask the user if an inmediate VPN connection is wanted
	echo "\n"
	read -r -p "Installation finished. Do you want to connect to the VPN now? [y]es, [n]o: " userchose2
	
	# If the user wants an inmediate connection, execute the connect-vpn.sh script, if not, end the script
	if [ "$userchose2" = 'y' ]
	then
		echo "\n"
		sudo bash connect-vpn.sh
	else
		echo "Installation finished. Press enter to exit."
		read -r junk
	fi
else
	echo "Installation finished. Press enter to exit."
	read -r junk
fi
