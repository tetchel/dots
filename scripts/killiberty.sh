#!/usr/bin/env bash

PS_RESULT=$(ps -ax | grep java | grep ws-server | awk '{print $1}')

if [[ -z "${PS_RESULT}" ]]; then
    echo "No WAS Servers are running."
else
    NUM_SERVERS=$(echo "$PS_RESULT" | wc -l)
    while read -r line; do
        echo "Killing pid $line"
        kill "$line"
    done <<< "$PS_RESULT"
    echo "$NUM_SERVERS servers killed."
fi
