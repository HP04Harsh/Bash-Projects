#!/bin/bash

SOURCE="$HOME/Documents"
DEST="$HOME/backup"
DATE=$(date +%F)

mkdir -p "$DEST"

tar -czf "$DEST/backup_$DATE.tar.gz" "$SOURCE"

echo "✅ Backup completed"
