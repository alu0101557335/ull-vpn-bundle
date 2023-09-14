#!/usr/bin/bash
sudo apt-get -y update
sudo apt install -y network-manager-vpnc-gnome
sudo cat > /etc/vpnc/ull.conf << EOF
IPSec gateway vpn.ull.es
IPSec ID ULL
IPSec secret usu4r10s
EOF

