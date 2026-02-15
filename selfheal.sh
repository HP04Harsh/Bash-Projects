#!/bin/bash

SERVICE="nginx"

if systemctl is-active --quiet $SERVICE; then
  echo "✅ $SERVICE is running"
else
  echo "⚠ $SERVICE is down. Restarting..."
  systemctl restart $SERVICE

  if systemctl is-active --quiet $SERVICE; then
    echo "🔁 $SERVICE restarted successfully"
  else
    echo "❌ Failed to restart $SERVICE"
  fi
fi
