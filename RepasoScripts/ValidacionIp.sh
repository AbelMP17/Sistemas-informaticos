#!/bin/bash

echo "$1" | grep -E "([0-9]|[0-9][0-9]|[12][0-9][0-9]\.){3}"

if [[ $? -ne 0 ]]
then
	echo "NO ha salido bien"
else
	echo "Todo correcto"
fi
