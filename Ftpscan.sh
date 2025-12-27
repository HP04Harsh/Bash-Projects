#!/bin/bash
echo "Please enter the IP:" TARGET # Change to your target IP

echo "Checking $TARGET for anonymous FTP..."

ftp -n $TARGET <<END_SCRIPT
quote USER anonymous
quote PASS anonymous
ls
quit
END_SCRIPT
