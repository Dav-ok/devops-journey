#!/bin/bash
echo "=== DevOps Day 4 - Conditions ==="
read -p "Enter your name: " NAME
if [ "$NAME" == "Dav-ok" ] || [ "$NAME" == "Dav" ]; then
  echo "Welcome boss $NAME! Access granted."
elif [ -z "$NAME" ]; then
  echo "You didn't type anything!"
else
  echo "Hello $NAME, you are a guest."
fi
if [ -f "day3-bash/info.sh" ]; then
  echo "Check: Day 3 script still exists - Good!"
else
  echo "Check: Day 3 script is missing!"
fi
echo "User: $(whoami) | Date: $(date)"
