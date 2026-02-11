#!/bin/bash

echo "1. Show date"
echo "2. Show current user"
echo "3. Show working directory"
echo "4. Exit"

read CHOICE

case $CHOICE in 
  1) date ;;
  2) whoami ;;
  3) pwd ;;
  4) echo "Exiting..."; exit 0 ;;
  *) echo "Invalid option. Please choose between 1-4." ;;
esac