#!/bin/bash

read -p "Enter the filename to read: " filename

ERROR=(grep -i "error" "$filename" | wc -l)
if [ $ERROR -gt 0 ]; then
    echo "The file contains $ERROR errors."
else
    echo "No errors found in the file."
fi