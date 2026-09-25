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

# Login Into Proot
proot-distro login debian -- bash /Phases/2 Package Installation/package-install.sh

# Check System Architecture
ARCH=$(uname -m)
case "$ARCH" in
    x86_64)
    echo "Installing Display Packages... (Amd)"
fail_safe xpra xpra-html5 xvfb xauth xclip xdotool dbus-x11
echo "Installed Display Packages (Amd)"
    ;;
aarch64|arm64)
    echo "Installing Display Packages (Arm)"
fail_safe curl
curl https://xpra.org/get-xpra.sh | bash
apt update
fail_safe xpra xpra-html5 xvfb xauth xclip xdotool dbus-x11
echo "Installed Display Packages (Arm)"
    ;;
*)
    echo "Unknown Architecture, Install Aborted."
    exit 1
    ;;
esac

# Updating & Upgrading Apt
echo "Updating & Upgrading Apt..."
apt update && apt upgrade
echo "Updaded & Upgraded Apt"

# Desktop Envrioment
echo  "Installing Desktop Enviroment..."
#fail_safe lxqt
select DE in "Sway" "Lxqt"; do
    case $DE in
    "Sway")
        echo "Installing  Sway.."
        fail_safe sway
        echo "Installed Sway"
        ;;
    "Lxqe")
        echo "Installing Lxqt..."
        fail_safe lxqt
        echo "Installed Lxqt"
        ;;
    esac
    break
done
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