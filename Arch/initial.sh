#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
$DIR/yaourt.sh || { echo "ERROR: Installing yaourt failed! "; exit 1; }
git config --global user.email "santeri@hetekivi.com"
git config --global user.name "Santeri Hetekivi"
$DIR/install.sh vim aspell cvsps2 gnome-keyring perl-libwww perl-term-readkey python2 subversion tk libgnome-keyring python bash-completion openssh sshfs || { echo "ERROR: Installing initial packages failed!"; exit 1; } 
systemctl enable sshd.service || { echo "ERROR: Enabling sshd.service failed! "; exit 1; }
exit 0
