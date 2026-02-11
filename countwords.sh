#! /bin/bash
echo "Enter file name:"
read filename

if [[! -f "$filename" ]]; then 
 echo "File not found!"
 exit 1
fi

Lines= $(wc -L "$filename")
Words = $(wc -w "$filename")
Chars = $(wc -m "$filename")

echo "File Info:"
echo "Lines: $Lines"
echo "Words: $Words"
echo "Characters: $Chars"