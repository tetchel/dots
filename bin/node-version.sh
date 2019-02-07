#!/usr/bin/env bash

node_version=$(node -v)
node_major_version=$(node -e "console.log('$node_version'.replace('v', '').split('.')[0])")
node_minor_version=$(node -e "console.log('$node_version'.replace('v', '').split('.')[1])")

echo "Determined node verison as $node_major_version.$node_minor_version"

if [[ "$node_major_version" -le "6" && "$node_minor_version" -le "2" ]]; then
	debug_option="inspect"
else
	debug_option="debug"
fi

echo "debug_option is $debug_option"
