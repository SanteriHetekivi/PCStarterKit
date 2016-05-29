#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
$DIR/install.sh git || { echo "ERROR: Installing GIT packages failed!"; exit 1; }                                     
cd ~
git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -si
cd ~
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -si
cd ~
rm -rf package-query yaourt
echo "yaourt installed!"
exit 0
