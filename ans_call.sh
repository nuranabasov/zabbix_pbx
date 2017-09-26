#!/bin/bash
PATH="$(env |grep "^PATH" |cut -f2 -d"=")"

call=$(/usr/sbin/asterisk -rx "queue show 1000"  | head -n1 | sed 's/[\(),]//g'|  sed  's/ /:/g' | awk -F':' '{print$17}')

echo "$call"
