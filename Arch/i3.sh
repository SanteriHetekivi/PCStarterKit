#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
$DIR/Xorg.sh || { echo "ERROR: Installing Xorg failed!"; exit 1; }    
$DIR/install.sh i3 dmenu2 pasystray-git || { echo "ERROR: Installing i3  packages failed!"; exit 1; }    
cp $DIR/files/config ~/.config/i3/ &&
chown $USER:$USER ~/.config/i3/config
echo "i3 installed!"
echo "INFO: https://wiki.archlinux.org/index.php/i3"
exit 0

