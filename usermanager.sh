#!/bin/bash

echo "===== User Management Script ====="
echo "1. Create User"
echo "2. Delete User"
echo "3. Lock User"
echo "4. Unlock User"
echo "5. Set Expiry Date"
read -p "Choose option: " option

case $option in
1)
    read -p "Enter username: " username
    sudo useradd -m $username
    echo "Set password for $username"
    sudo passwd $username
    read -p "Enter group (optional): " group
    if [ ! -z "$group" ]; then
        sudo usermod -aG $group $username
    fi
    echo "User created successfully."
    ;;
2)
    read -p "Enter username to delete: " username
    sudo userdel -r $username
    echo "User deleted."
    ;;
3)
    read -p "Enter username to lock: " username
    sudo usermod -L $username
    echo "User locked."
    ;;
4)
    read -p "Enter username to unlock: " username
    sudo usermod -U $username
    echo "User unlocked."
    ;;
5)
    read -p "Enter username: " username
    read -p "Enter expiry date (YYYY-MM-DD): " date
    sudo chage -E $date $username
    echo "Expiry date set."
    ;;
*)
    echo "Invalid option"
    ;;
esac
