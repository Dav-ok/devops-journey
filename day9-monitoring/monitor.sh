#!/bin/bash
echo "=== SYSTEM REPORT $(date) ==="
echo "--- Uptime ---"
uptime
echo "--- Memory ---"
free -h
echo "--- Disk ---"
df -h | grep -E "Filesystem|prism"
echo "--- Backup Script Permission ---"
ls -l day8-cron/auto-backup.sh
echo "=== END ==="
