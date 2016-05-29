#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
$DIR/install.sh xorg-server xorg-server-utils xorg-apps xorg-xinit terminator || { echo "ERROR: Installing Xorg packages!"; exit 1; }
echo "Xorg installed!"
echo "INFO: https://wiki.archlinux.org/index.php/Xorg and https://wiki.archlinux.org/index.php/xinitrc"
exit 0
