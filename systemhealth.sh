#!/bin/bash

REPORT="system_health_$(date +%F).txt"

echo "📊 System Health Report" > $REPORT
echo "----------------------" >> $REPORT

echo "🖥 CPU Load:" >> $REPORT
uptime >> $REPORT

echo "💾 Memory Usage:" >> $REPORT
free -h >> $REPORT

echo "📂 Disk Usage:" >> $REPORT
df -h >> $REPORT

echo "✅ Report saved as $REPORT"
