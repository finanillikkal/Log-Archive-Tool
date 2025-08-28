#!/bin/bash

# Usage: ./log-archive.sh /path/to/logs

LOG_DIR="$1"
ARCHIVE_DIR="$HOME/log-archives"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"
HISTORY_FILE="$ARCHIVE_DIR/archive_history.log"

# Check Input
if [ -z "$LOG_DIR" ]; then
	echo "Usage: $0 <logdirectory>"
	exit 1
fi

if [ ! -d "$LOG_DIR" ]; then
	echo "Error: $LOG_DIR is not a directory."
	exit 1
fi

#Make archive directory
mkdir -p "$ARCHIVE_DIR"

# Create tar.gz
tar -czf "$ARCHIVE_DIR/$ARCHIVE_NAME" -C "$(dirname "$LOG_DIR")" "$(basename "$LOG_DIR")"

# Log the action
echo "$(date '+%Y-%m-%d %H:%M:%S') - Archived $LOG_DIR -> $ARCHIVE_DIR/ARCHIVE_NAME" >> "HISTORY_FILE"

echo "✅ Logs archived: $ARCHIVE_DIR/ARCHIVE_NAME"
