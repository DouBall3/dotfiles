#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars
polybar main &

MONITOR=DP-2-1 polybar secondary &
#MONITOR=DVI-I-1 polybar secondary &
MONITOR=DP-2-2 polybar secondary &

echo "Bars launched..."
