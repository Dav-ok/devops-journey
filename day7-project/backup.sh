#!/bin/bash
# DevOps Day 7 CAPSTONE - Backup Tool
# Combines: $1, tar, functions, if, for

echo "=== DevOps Capstone Backup Tool ==="

# Function 1: Usage guide
show_usage() {
  echo "Usage: $0 <file_or_folder> [more_files...]"
  echo "Example: $0 day2-linux/ day3-bash/"
}

# Function 2: The actual backup
do_backup() {
  target=$1
  if [ ! -e "$target" ]; then
    echo "❌ MISSING: $target"
    return
  fi

  # Create name like day2-linux-backup-2026-10-21.tar.gz
  base=$(basename "$target")
  date=$(date +%F)
  output="${base}-backup-${date}.tar.gz"

  tar -czf "$output" "$target"
  
  if [ $? -eq 0 ]; then
    echo "✅ BACKUP DONE: $target -> $output"
  else
    echo "❌ FAILED: $target"
  fi
}

# --- MAIN LOGIC ---
# $1 check (Day 7 concept)
if [ -z "$1" ]; then
  echo "No file given!"
  show_usage
  exit 1
fi

# Loop over ALL arguments $@ (Day 5 concept)
for item in "$@"
do
  do_backup "$item"
done

echo ""
echo "Capstone Complete! 🎉"
