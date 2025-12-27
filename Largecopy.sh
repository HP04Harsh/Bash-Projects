#!/bin/bash
SOURCE="/var/www/html"
DEST="/backup/website"

# -a: Archive mode (recursive + preserves attributes)
# -v: Verbose (shows output)
# -h: Human-readable numbers
# --progress: Shows a progress bar for large files
rsync -avh --progress $SOURCE $DEST
