#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
$DIR/install.sh networkmanager network-manager-applet dhclient || { echo "ERROR: Installing Wifi packages failed!"; exit 1; } 
systemctl enable NetworkManager.service || { echo "ERROR: Enabling NetworkManager.service failed! "; exit 1; }
echo "WLAN installed!"
echo "INFO: https://wiki.archlinux.org/index.php/NetworkManager"
exit 0
