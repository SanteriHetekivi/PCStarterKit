#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
$DIR/install.sh git &&
cd ~ &&
git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt --depth=1 &&
cp $DIR/files/.bash* ~/ &&
chown $USER:$USER ~/.bash* &&
exit 0
