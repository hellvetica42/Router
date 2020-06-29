#!/bin/bash

KEY='100% packet loss'
PING="$(ping -c 1 -W 2 google.com)"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" >/dev/null 2>&1 && pwd  )"
LOG="${DIR}/login.sh"
SMS="${DIR}/sendSMS.sh"

if [[ $PING =~ "$KEY" ]] 
then
	bash $LOG
	bash $SMS 13880 NASTAVI
	echo "SMS sent on $(date)"
	sleep 20
else
	echo "Connection verified on $(date)"
fi
