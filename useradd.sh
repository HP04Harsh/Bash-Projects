#!/bin/bash

read -p "Enter username: " USER

sudo useradd "$USER"
sudo passwd "$USER"

echo "✅ User $USER created successfully"
