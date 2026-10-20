#!/bin/bash
echo "=== DevOps Day 5 - Loops ==="

echo "1. Checking all your journey files:"
for FILE in day2-linux/about.txt day3-bash/info.sh day4-conditions/check.sh notfound.txt
do
  if [ -f "$FILE" ]; then
    echo "✅ FOUND: $FILE"
  else
    echo "❌ MISSING: $FILE (expected for notfound.txt)"
  fi
done

echo ""
echo "2. Server retry simulation (like real DevOps):"
for i in 1 2 3 4 5
do
  echo "Attempt $i: Connecting to server..."
  sleep 1
done
echo "Connected!"

echo ""
echo "3. While loop - counting down:"
COUNT=5
while [ $COUNT -gt 0 ]
do
  echo "T-minus $COUNT"
  COUNT=$((COUNT - 1))
  sleep 1
done
echo "Liftoff! 🚀"
