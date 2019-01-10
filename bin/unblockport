#!/usr/bin/env bash

if [ -z $1 ]; then 
    echo "No port number specified"
    exit
fi

# pass port number as $1
GREP="grep "$1
PID_WITH_NAME="$(netstat -tulpn | $GREP | awk '{print $7}')"
if [ -z $PID_WITH_NAME ]; then
    echo "Nothing is blocking port $1"
    exit
fi

PID=${PID_WITH_NAME%%/*}
echo "Killing $PID"
kill $PID
