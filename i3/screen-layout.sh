#!/bin/sh

monitors=$(xrandr --listmonitors)
if [ "${monitors}" ~= "DP-3" ]; then
    echo "Desktop configuration"
    xrandr --output eDP-1 --off --output DP-1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-2 --off --output DP-3 --primary --mode 2560x1440 --pos 1920x0 --rotate normal
else
    echo "Laptop configuration"
    xrandr --output eDP-1 --mode 1920x1080 --primary
fi


