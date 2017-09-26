#!/bin/bash
PATH="$(env |grep "^PATH" |cut -f2 -d"=")"

call=$(/usr/sbin/asterisk -rx "sip show channels" | grep "Peer Ip address" | wc -l)

echo "$call"
