#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
$DIR/install.sh alsa-utils alsa-plugins bluez bluez-utils pulseaudio pulseaudio-bluetooth pulseaudio-equalizer pulseaudio-gconf pulseaudio-jack pulseaudio-lirc pulseaudio-xen pulseaudio-zeroconf pulseaudio-alsa paprefs pavucontrol || { echo "ERROR: Installing Audio and Bluetooth packages failed!"; exit 1; } 
sudo modprobe btusb || { echo "ERROR: Starting bluetooth failed! "; exit 1; }
sudo systemctl enable bluetooth.service || { echo "ERROR: Enabling bluetooth.service failed! "; exit 1; }
echo "WLAN installed!"
echo "INFO: https://wiki.archlinux.org/index.php/Advanced_Linux_Sound_Architecture"
echo "INFO: https://wiki.archlinux.org/index.php/PulseAudio"
echo "INFO: https://wiki.archlinux.org/index.php/Bluetooth"
exit 0
