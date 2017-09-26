#!/bin/bash

PATH="$(env |grep "^PATH" |cut -f2 -d"=")"

TRUNK=$( /usr/sbin/asterisk -rx "sip show peers" | grep "SIP PEER NAME" |  awk '{$NR=""; print $6}')


if [  $TRUNK == "OK" ]
then
	echo '0'

else
	echo '1'
fi







