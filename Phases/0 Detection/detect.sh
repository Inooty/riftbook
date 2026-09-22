#! /bin/bash
echo "-Operating System Info-"
uname -a
cat /etc/os-release

# First Check System Architecture
ARCH=uname -m
if [ $ARCH -ge]

# Then Check Remaining Storage
AVAIL_STORAGE=$(df / | tail -1 | awk '{print $4}')
if [ $AVAIL_STORAGE -ge 10485760 ]; then
    echo "Worked."
else
    echo "Not Enough Storage. Install aborted."
fi