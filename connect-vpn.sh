#!/bin/bash

# Establish connection with the VPN using the stored user data and the VPN configuration file
sudo vpnc --username "$(cat vpnuser.txt)" --password "$(cat vpnpass.txt)" ull.conf
