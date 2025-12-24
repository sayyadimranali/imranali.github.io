#!/bin/bash
# User audit script

echo "Users with UID 0:"
awk -F: '$3 == 0 {print $1}' /etc/passwd

echo ""
echo "Users without password:"
awk -F: '($2 == "" ) {print $1}' /etc/shadow 2>/dev/null

echo ""
echo "All system users:"
cut -d: -f1 /etc/passwd
