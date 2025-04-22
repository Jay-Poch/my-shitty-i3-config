
#!/bin/bash

# Kill existing bars
killall -q polybar

# Wait until processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

echo "Monitors detected:"
polybar --list-monitors

# Launch one bar per connected monitor

for m in $(polybar --list-monitors | cut -d: -f1); do
  echo "Launching on monitor: $m"
  MONITOR="$m" polybar --reload example &
done

