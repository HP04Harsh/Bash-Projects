#!/bin/bash
# Assuming a file named 'server.log' exists

echo "Extracting IPs related to Errors:"

grep "Error" server.log | awk '{print $3}' | sort | uniq
