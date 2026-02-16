#!/bin/bash

mkdir -p PDFs Images Videos Others

for file in *; do
  if [[ $file == *.pdf ]]; then
    mv "$file" PDFs/
  elif [[ $file == *.jpg || $file == *.png ]]; then
    mv "$file" Images/
  elif [[ $file == *.mp4 ]]; then
    mv "$file" Videos/
  else
    mv "$file" Others/
  fi
done

echo "Downloads cleaned ✅"
