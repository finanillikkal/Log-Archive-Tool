# Log Archive Tool

A simple command-line tool to archive logs into `.tar.gz` files.  
It helps keep log directories clean while preserving compressed backups.

## Features
- Compresses log directories into `tar.gz` archives
- Names archives with timestamp (`logs_archive_YYYYMMDD_HHMMSS.tar.gz`)
- Saves all archives in `~/log-archives`
- Logs each run in `archive_history.log`
- Can be scheduled with cron for automatic log rotation

## Usage
```bash
./log-archive.sh /var/log
