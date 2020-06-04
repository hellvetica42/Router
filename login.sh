#!/bin/bash

CMD='curl -d "isTest=false&goformId=LOGIN&password=YWRtaW4%3D" http://192.168.0.1/goform/goform_set_cmd_process'
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" >/dev/null 2>&1 && pwd  )"
DIR="${DIR}/headers.txt"
while read LINE
	do CMD="${CMD} -H \"$LINE\" "
done < $DIR

#echo $CMD
eval $CMD
