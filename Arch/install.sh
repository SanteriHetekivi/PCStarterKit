#!/usr/bin/env bash

function isInstalled 
{
    if pacman -Qs $1 > /dev/null ; then
        return 0 
    else
        return 1
    fi
}

if isInstalled yaourt ; then
    MANAGER="yaourt"
else
    MANAGER="sudo pacman"
fi

sudo $MANAGER -Syu && 

notInstalled=""
for package in "$@" 
do
    if  isInstalled $package ; then
        echo "The package $package is installed"
    else
        notInstalled="$notInstalled $package"
    fi
done

if  [ ! -z "$notInstalled" ] ; then
    $MANAGER -S $notInstalled
fi

exit 0 
