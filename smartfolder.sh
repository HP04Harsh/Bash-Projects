#!/bin/bash

DIR="$HOME/Downloads"

cd "$DIR" || exit

for file in *; do
  if [[ -f "$file" ]]; then
    ext="${file##*.}"
    mkdir -p "$ext-files"
    mv "$file" "$ext-files/"
  fi
done

echo "✅ Files organized successfully"
