#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
loadkeys fi &&
timedatectl set-ntp true &&
timedatectl set-timezone Europe/Helsinki &&
cp $DIR/files/mirrorlist /etc/pacman.d/mirrorlist &&
pacstrap /mnt base base-devel &&
genfstab -p /mnt >> /mnt/etc/fstab &&
arch-chroot /mnt
