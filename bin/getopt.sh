#!/usr/bin/env bash

# Put this at the top of a bash script for easy configuring of set -x and set -e
# Using -v and -e flags

while getopts "ve" o; do
    case "${o}" in
        v)
            setx="true"
            ;;
        e)
            sete="true"
            ;;
        #*)
        #    echo "Unknown option ${OPTOPT}"
        #    ;;
    esac
done
shift $((OPTIND-1))

if [[ -n "$sete" ]]; then
   set -e
fi
if [[ -n "$setx" ]]; then
    set -x
fi
