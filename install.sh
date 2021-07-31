#!/bin/sh

# Starting installation
echo "Starting installation of Arch Linux"

# Check connectivity
function has_internet() {
    echo "Checking internet connection..."
    ping=$(ping -c5 archlinux.org)
    return $?
}

function installer() {
    if has_internet; then
        # start install
        echo "Internet connection: OK"
    else
        echo "Make sure you are connected to a stable internet connection before starting the installation. If any problem check this link: https://wiki.archlinux.org/title/installation_guide#Connect_to_the_internet"
    fi
}

installer
