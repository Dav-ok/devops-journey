#!/bin/bash
echo "=== DevOps Day 6 - System Health Checker ==="

check_disk() {
  echo "[DISK] Checking..."
  df -h | grep -E "Filesystem|dev" | head -5
}

check_memory() {
  echo "[MEMORY] Checking..."
  free -h 2>/dev/null || echo "Memory info not available on Termux"
}

check_journey() {
  echo "[JOURNEY] Checking your DevOps files:"
  for f in day2-linux/about.txt day3-bash/info.sh day4-conditions/check.sh day5-loops/loop.sh
  do
    if [ -f "$f" ]; then
      echo "  ✅ $f"
    else
      echo "  ❌ $f"
    fi
  done
}

# Now CALL the functions - like real tools
check_disk
echo ""
check_memory
echo ""
check_journey
echo ""
echo "Health Check Complete! System OK 🚀"
