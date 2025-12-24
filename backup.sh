#!/bin/bash
# Backup script using tar

SOURCE="/etc"
DEST="/backup"
DATE=$(date +%F)
BACKUP_FILE="$DEST/etc-backup-$DATE.tar.gz"

mkdir -p $DEST

tar -czf $BACKUP_FILE $SOURCE

if [ $? -eq 0 ]; then
  echo "Backup successful: $BACKUP_FILE"
else
  echo "Backup failed"
fi
