#!/bin/bash

echo "===== Process Monitor ====="

echo ""
echo "Top 5 CPU consuming processes:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -6

echo ""
echo "Top 5 Memory consuming processes:"
ps -eo pid,comm,%mem --sort=-%mem | head -6

echo ""
read -p "Do you want to kill a process? (y/n): " choice

if [ "$choice" == "y" ]; then
    read -p "Enter PID to kill: " pid
    kill -9 $pid
    echo "Process $pid killed."
fi

echo ""
read -p "Set CPU usage alert threshold (e.g. 80): " threshold

high_cpu=$(ps -eo %cpu | awk -v th=$threshold '$1 > th' | wc -l)

if [ $high_cpu -gt 0 ]; then
    echo "WARNING: $high_cpu processes exceeding $threshold% CPU"
else
    echo "All processes normal."
fi
