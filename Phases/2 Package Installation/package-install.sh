#! /bin/bash

# Fail Safe
fail_safe() {
    echo "Installing... $@"
    if ! apt install -y "$@"; then
        echo "First Attempt Failed, Restarting..."
        if ! apt install -y "$@"; then
            echo "Install Failed After Second Attempt, Aborting..."
            exit 1
        fi
    fi
}

# Updating & Upgrading Apt
echo "Updating & Upgrading Apt..."
apt update && apt upgrade
echo "Updaded & Upgraded Apt"

# Installing Display Packages
echo "Installing Display Packages..."
fail_safe xpra xvfb xauth xclip xdotool
echo "Installed Display Packages"

# Desktop Envrioment
echo  "Installing Desktop Enviroment..."
fail_safe lxqt
echo "Installed Desktop Enviroment"

# System Apps
echo "Installing Terminal Emulator / Shell..."
fail_safe rxvt-unicode
echo "Installed Terminal Emulator / Shell"
echo "Installing Browser..."
fail_safe chromium
echo "Installed Browser"

# Announce Completion
echo "Package Installation Complete"