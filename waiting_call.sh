#!/bin/bash
PATH="$(env |grep "^PATH" |cut -f2 -d"=")"

call=$(/usr/sbin/asterisk -rx "queue show 1000"  | awk 'NR==1' | sed 's/[\(),]//g'|  sed  's/ /:/g' | awk -F':' '{print$15}')

echo "$call"
