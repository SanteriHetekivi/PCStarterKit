#!/usr/bin/env bash
echo "Do first:"
echo "1. Partition the disks: https://wiki.archlinux.org/index.php/Partitioning"
echo "2. Format the partitions (activate swap): https://wiki.archlinux.org/index.php/File_systems#Create_a_filesystem and https://wiki.archlinux.org/index.php/Swap"
echo "3. Mount the partitions to /mnt, /mnt/boot, (/mnt/home)..."
read -p "Press [Enter] key to start..."
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
loadkeys fi &&
timedatectl set-ntp true &&
timedatectl set-timezone Europe/Helsinki &&
cp $DIR/files/mirrorlist /etc/pacman.d/mirrorlist &&
pacstrap /mnt base base-devel &&
genfstab -p /mnt >> /mnt/etc/fstab &&
arch-chroot /mnt
