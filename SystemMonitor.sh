#!/bin/bash
clear
echo "--- System Monitor ---"
echo "----------------------"

# 1. Get CPU Load (1 min average)
cpu_load=$(top -bn1 | grep "load average" | awk '{print $10}' | sed 's/,//')
echo "CPU Load: $cpu_load"

# 2. Get Free Memory (Human readable)
mem_free=$(free -h | grep Mem | awk '{print $4}')
echo "Free RAM: $mem_free"

# 3. Get Disk Usage (Root partition)
disk_use=$(df -h / | tail -1 | awk '{print $5}')
echo "Disk Use: $disk_use"
