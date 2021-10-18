#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done


SIDES=$(xrandr -q | egrep -v "disconnected" | egrep -v "primary" | egrep "connected" | cut -d " " -f1)
PRIMARY=$(xrandr -q | egrep -v "disconnected" | egrep "primary" | egrep "connected" | cut -d " " -f1)
export PRIMARY

 #Launch bars
polybar main &

for MONITOR in $SIDES; do
    export MONITOR
    polybar secondary &
    #echo $MONITOR
done

#MONITOR=DP-2-1 polybar secondary &
#MONITOR=DVI-I-1 polybar secondary &
#MONITOR=DP-2-2 polybar secondary &

echo "Bars launched..."
