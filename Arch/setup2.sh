#!/usr/bin/env bash
echo "Do first:"
echo "1. Uncomment locales in /etc/locale.gen file."
echo "2. Add LANG=your_locale to /etc/locale.conf file."
echo "3. Set hostname to /etc/hostname and /etc/hosts files."
echo "4. Insert ethernet cable."
read -p "Press [Enter] key to start..."
INTERFACE=$(ls /sys/class/net | grep '^en')
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ln -s /usr/share/zoneinfo/Europe/Helsinki /etc/localtime &&
timedatectl set-timezone Europe/Helsinki &&
hwclock --systohc --utc
# Uncomment locales /etc/locale.gen
/etc/locale.gen &&
cp $DIR/files/vconsole.conf /etc/vconsole.conf &&
mkinitcpio -p linux &&
passwd &&
systemctl enable dhcpcd@$INTERFACE.service &&
bootctl install &&
echo "Edit /boot/loader/entries/arch.conf and /boot/loader/loader.conf to match your system." &&
exit 0
