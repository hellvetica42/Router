#!/bin/bash

KEY='100% packet loss'
PING="$(ping -c 1 -W 2 google.com)"

if [[ $PING =~ "$KEY" ]] 
then
	bash login.sh
	bash sendSMS.sh
	echo "SMS sent on $(date)"
else
	echo "Connection verified on $(date)"
fi
