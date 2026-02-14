#! /bin/bash

FU= $(df -h | egrep -v "Filesystem|Avail|Used" | awk '{print $5}' | sed 's/%//g' | sort -rn | head -1)

TO="user@email.com"

if [[$FU -gt 90]]; then
    echo "Disk space is critically low: $FU%"
elif [[$FU -gt 80]]; then
    echo "Disk space is running low: $FU%"
else
    echo "Disk space is sufficient: $FU%"
fi