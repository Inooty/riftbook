#! /bin/bash

# Then Check Remaining Storage
AVAIL_STORAGE=$(df / | tail -1 | awk '{print $4}')
if [ $AVAIL_STORAGE -ge 10485760 ]; then
    echo "Enough Storage! Installing."
else
    echo "Not Enough Storage. Install aborted."
fi

# Announce Finish
echo "System Check Complete"