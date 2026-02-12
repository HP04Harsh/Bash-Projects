#!/bin/bash

count=1

for file in *.jpg; do
  mv "$file" "image_$count.jpg"
  ((count++))
done

echo "✅ Files renamed successfully"
