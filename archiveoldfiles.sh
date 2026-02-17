# This script will archive files older than 30 days in the specified directory

#!/bin/bash
#$Revision:01$

#Variables
BASE="/path/to/directory" #Please change this to the directory you want to archive
ARCHIVE="/path/to/archive" #Please change this to the directory you want to store the
Days=30
Depth=1
Run = 0

#check if the base  directory exists, if not create it
if [! -d "$BASE" ]; then
    echo "Base directory does not exist. Creating it now."
    mkdir -p "$BASE"
fi

#check if the archive directory exists, if not create it
if [! -d "$ARCHIVE" ]; then     
    echo "Archive directory does not exist. Creating it now."
    mkdir -p "$ARCHIVE"
fi

#find files older than 30 days and move them to the archive directory
for i in $(find "$BASE" -maxdepth $Depth -type f -mtime +$Days); do
    if [ -f "$i" ]; then
        echo "Archiving $i"
        mv "$i" "$ARCHIVE"
        ((Run++))
    fi
done

echo "Archived $Run files from $BASE to $ARCHIVE"

