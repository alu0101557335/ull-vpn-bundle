#!/bin/bash

# Read and store in single files the user input for the VPN username and password
read -p 'Introduce your VPN username: ' > vpnuser.txt
read -sp 'Introduce your VPN password: '>> vpnpass.txt
