#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
$DIR/install.sh git base-devel || { echo "ERROR: Installing yay failed! "; exit 1; } &&
cd ~ &&
git clone https://aur.archlinux.org/yay.git &&
cd yay &&
makepkg -si &&
cd ~ &&
rm -rf yay &&
echo "yay installed!" &&
exit 0