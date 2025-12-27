#!/bin/bash

for (( i = 1; i <= 8; i++ )); do
    for (( j = 1; j <= 8; j++ )); do
        # Check if the sum of row+col is even or odd
        total=$((i + j))
        if [ $((total % 2)) -eq 0 ]; then
            # Print a black block
            echo -e -n "\033[40m  \033[0m" 
        else
            # Print a white block
            echo -e -n "\033[47m  \033[0m"
        fi
    done
    # New line after every row
    echo "" 
done
