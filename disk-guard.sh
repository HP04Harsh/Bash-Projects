#!/bin/bash

THRESHOLD=80

echo "Checking disk usage..."
echo "--------------------------------"

df -h | awk 'NR>1 {print $1 " " $5}' | while read output;
do
  usage=$(echo $output | awk '{print $2}' | sed 's/%//g')
  partition=$(echo $output | awk '{print $1}')

  if [ $usage -ge $THRESHOLD ]; then
    echo "WARNING: $partition is ${usage}% full!"
  else
    echo "$partition is OK (${usage}%)"
  fi
done
