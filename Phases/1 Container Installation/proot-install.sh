#! /bin/bash

# Set Up Storage
termux-setup-storage

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

# Logging Into Proot
proot-distro login debian

# Announce Completition
echo "Container Installation Complete"