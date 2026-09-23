#! /bin/bash

# Set Up Storage
termux-setup-storage

# Installing Proot
pkg update && pkg upgrade -y
pkg install proot-distro

# Install Container
proot-distro install debian

# Announce Completition
echo "Container Installation Complete"