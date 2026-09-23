#! /bin/bash

# Warning
#if command -v pkg >/dev/null 2>&1; then
#    echo "Installing..."
#else
#    echo "This script does not appear to be running inside Termux. Exiting..."
#    exit 1
#fi

# Script Home
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Check for Hardware
cd "$SCRIPT_DIR/Phases/0 Detection"
bash detect.sh
cd "$SCRIPT_DIR"

# Begin Installation
cd "$SCRIPT_DIR/Phases/1 Container Installation"
bash proot-install.sh
cd "$SCRIPT_DIR"

# Setting Up Container
cd "$SCRIPT_DIR/Phases/2 Package Installation"
bash package-install.sh
cd "$SCRIPT_DIR"

# Configuring System
cd "$SCRIPT_DIR/Phases/3 System Configuration"
bash system-config.sh
cd "$SCRIPT_DIR"