#!/bin/bash

ENV_FILE=".env"

if [ ! -f "$ENV_FILE" ]; then
  echo "ERROR: .env file not found!"
  exit 1
fi

REQUIRED_VARS=("DB_HOST" "DB_USER" "API_KEY")

for var in "${REQUIRED_VARS[@]}"
do
  if ! grep -q "^$var=" "$ENV_FILE"; then
    echo "ERROR: $var is missing in .env"
    exit 1
  fi
done

echo "All required environment variables are present."
