#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
$DIR/Xorg.sh || { echo "ERROR: Installing Xorg failed!"; exit 1; }    
$DIR/install.sh lxde || { echo "ERROR: Installing LXDE packages failed!"; exit 1; }    
echo "LXDE installed!"
echo "INFO: https://wiki.archlinux.org/index.php/LXDE"
exit 0

