#!/bin/bash
# SSH failed login alert script

LOG="/var/log/auth.log"
THRESHOLD=5

FAILED=$(grep "Failed password" $LOG | wc -l)

if [ "$FAILED" -ge "$THRESHOLD" ]; then
  echo "ALERT: $FAILED failed SSH login attempts detected on $(date)"
fi
