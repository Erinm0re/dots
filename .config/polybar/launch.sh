#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload maini3 &
  done
else
  polybar --reload maini3 &
fi

echo "Bars launched..."

# Launch bar1 and bar2

#echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
#polybar main 2>&1 | tee -a /tmp/polybar1.log & disown
#polybar main2 2>&1 | tee -a /tmp/polybar2.log & disown

#polybar -c ~/.config/polybar/config main &
#polybar -c ~/.config/polybar/config2 main2 &

