#!/bin/bash

THRESHOLD=80
DIR="/var/log"

USAGE=$(df "$DIR" | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "⚠ Disk usage is $USAGE%. Cleaning logs..."

  find "$DIR" -type f -name "*.log" -mtime +7 -delete

  echo "🧹 Old logs cleaned"
else
  echo "✅ Disk usage is normal: $USAGE%"
fi
