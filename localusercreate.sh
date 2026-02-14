#this script creates a local user on a Linux system. It prompts the user for a username and password, and then creates the user with the specified credentials.

#!/bin/bash
$Revision:01$

#Prompt for username and password
read -p "Enter the username for the new user: " USERNAME
read -s -p "Enter the password for the new user: " PASSWORD 
echo  "do you want to add the user to the sudo group? (y/n)"
read SUDO

#Create the user
useradd -m -s /bin/bash "$USERNAME"
echo "$USERNAME:$PASSWORD" | chpasswd   
if [ "$SUDO" == "y" ]; then
    usermod -aG sudo "$USERNAME"
    echo "User $USERNAME has been added to the sudo group."
else
    echo "User $USERNAME has been created without sudo privileges."
fi  

echo "User $USERNAME has been created successfully."
    