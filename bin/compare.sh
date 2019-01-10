#!/usr/bin/env bash

# Returns if the first parameter is greater than the second parameter, supporting floats.
# https://stackoverflow.com/a/25845393/
compare () {
	local first="$1" operator="$2" second="$3"
	echo "is $first $operator $second? let's find out!!!"

    local result="$(awk -vv1="$first" -vv2="$second" 'BEGIN {
        split(v1, a, /\./); split(v2, b, /\./);
        if (a[1] == b[1]) {
            exit (a[2] '$operator' b[2]) ? 0 : 1
        }
        else {
            exit (a[1] '$operator' b[1]) ? 0 : 1
        }
    }')"
	echo "RESULT $result"
	echo "$result"
}

echo "1 > 2 ? $(compare 1 '>' 2)"
echo "2 > 2 ? $(compare 2 '>' 2)"
echo "3 > 2 ? $(compare 3 '>' 2)"
