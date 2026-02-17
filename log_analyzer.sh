#!/bin/bash

LOGFILE="/var/log/auth.log"

if [ ! -f $LOGFILE ]; then
    echo "Log file not found!"
    exit 1
fi

echo "===== Log Analysis Report ====="

echo ""
echo "1. Failed Login Attempts:"
grep "Failed password" $LOGFILE | wc -l

echo ""
echo "2. Successful Logins:"
grep "Accepted password" $LOGFILE | wc -l

echo ""
echo "3. Top 5 IP Addresses:"
grep "Failed password" $LOGFILE | awk '{print $(NF-3)}' | sort | uniq -c | sort -nr | head -5

echo ""
echo "4. SSH Login Attempts:"
grep "sshd" $LOGFILE | wc -l

echo ""
echo "===== Analysis Complete ====="
