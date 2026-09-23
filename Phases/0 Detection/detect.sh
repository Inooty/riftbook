#! /bin/bash

# First Check System Architecture
ARCH=$(uname -m)
case "$ARCH" in
    x86_64)
    echo "AMD"
    ;;
aarch64|arm64)
    echo "ARM"
    ;;
*)
    echo "Unknown Architecture, Install Aborted."
    exit 1
    ;;
esac

# Then Check Remaining Storage
AVAIL_STORAGE=$(df / | tail -1 | awk '{print $4}')
if [ $AVAIL_STORAGE -ge 10485760 ]; then
    echo "Enough Storage! Installing."
else
    echo "Not Enough Storage. Install aborted."
fi

# Announce Finish
echo "System Check Complete"