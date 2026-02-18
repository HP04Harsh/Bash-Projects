#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: ./port-check.sh <port>"
  exit 1
fi

PORT=$1

echo "Checking port $PORT..."

if lsof -i :$PORT > /dev/null
then
  echo "Port $PORT is already in use!"
  lsof -i :$PORT
else
  echo "Port $PORT is free."
fi
