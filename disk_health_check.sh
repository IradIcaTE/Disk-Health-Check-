#!/bin/bash

usage=$(df -h / | grep '/' | awk '{print $5}' | sed 's/%//g')

if [ "$usage" -gt 80 ]; then
  echo "Warning: Disk usage is above 80%. Current usage: $usage%"
  echo "ALERT - DISK USAGE HIGH: $usage%" > disk_report.txt
else
  echo "Disk usage is normal: $usage%"
  echo "DISK OK: $usage%" > disk_report.txt
fi
