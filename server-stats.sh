#!/bin/bash

echo "======= SERVER PRFORMANCE STATUS ========"
echo "Generated on:$(date)"
echo ""


# Total CPU usage
# echo -e "\n>> CPU Usage" 
top -bn1 | grep -i cpu | awk '{print "CPU Usage: " 100  - $8 "%"}
echo ""

Memory usage
echo -e "\n>> Memory Usage"
free -h
echo ""

# Disk usage
echo -e "\n>> Disk usage"
df -h --total | grep total
echo ""

# Top 5 processes by CPU usage
echo -e "\n>> Top 5 processes by CPU-consuming processes:"
ps -eo pid,comm.%cpu --sort=%cpu | head -n 6
echo ""

# Top 5 processes by memory usage
echo -e "\n>> Top 5 processes by memory-consuming processes
ps -eo pid,comm,%mem --sort=%mem | head -n 6
echo ""

# uptime
echo -e "\n>> uptime:"
echo ""
