#!/usr/bin/env bash
set -eu

[[ -z "$(pgrep i3lock)" ]] || exit
i3lock -n -t -c 000000 #-i ${HOME}/pictures/winter.jpg
