#! /bin/bash

# Allow External Apps Config
echo "allow-external-apps=true" >> ~/.termux/termux.properties

# Fail Safe
fail_safe() {
    echo "Installing... $@"
    if ! pkg install -y "$@"; then
        echo "First Attempt Failed, Restarting..."
        if ! pkg install -y "$@"; then
            echo "Install Failed After Second Attempt, Aborting..."
            exit 1
        fi
    fi
}

# Upgrading & Updating Pkg
pkg update && pkg upgrade -y


# Installing Proot
fail_safe proot-distro

# Install Container
proot-distro install debian

# Announce Completition
echo "Container Installation Complete"