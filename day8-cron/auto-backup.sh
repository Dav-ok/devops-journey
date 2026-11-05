#!/bin/bash
# Day 8: Auto Backup - FIXED for cron

LOG_FILE="$HOME/devops-journey/day8-cron/backup.log"
DATE=$(date "+%F %H:%M:%S")
PROJECT_DIR="$HOME/devops-journey"

echo "[$DATE] Starting auto backup..." >> $LOG_FILE

# FIX: cd to project dir first + use absolute path
cd $PROJECT_DIR
$PROJECT_DIR/day7-project/backup.sh $PROJECT_DIR/day2-linux/ >> $LOG_FILE 2>&1

echo "[$DATE] Auto backup finished" >> $LOG_FILE
echo "--------------------------------" >> $LOG_FILE
