#!/usr/bin/env bash
echo "Do first:"
echo "1. Run OS/Arch/setup1.sh"
echo "2. Run OS/Arch/setup2.sh"
echo "3. Restart the computer!"
read -p "Press [Enter] key to start..."
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR_ARCH="$DIR/../OS/Arch/"
$DIR_ARCH/initial.sh &&
$DIR_ARCH/LXDE.sh &&
$DIR_ARCH/user.sh &&
exit 0
