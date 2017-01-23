#!/usr/bin/env bash

xrandr_output=$(xrandr -q | grep connected)
num_monitors=$(echo "$xrandr_output" | wc -l)

if [ $num_monitors -eq 1 ]; then
    echo $(echo "$xrandr_output" | awk '{print $1}')
# I like my bar on my secondary monitor, so output the bottom monitor, this seems to work for all my machines
else
    echo $(echo "$xrandr_output" | tail -1 | awk '{print $1}')
fi
