#!/bin/bash
FREE=$(free -h | grep Total | awk '{print $4}') 
TH=500

if [ $FREE -lt $TH ]; then
    echo "RAM is low: $FREE"
else
    echo "RAM is sufficient: $FREE M"
fi