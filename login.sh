#!/bin/bash

CMD='curl -d "isTest=false&goformId=LOGIN&password=YWRtaW4%3D" http://192.168.0.1/goform/goform_set_cmd_process'
while read LINE
	do CMD="${CMD} -H \"$LINE\" "
done < headers.txt

#echo $CMD
eval $CMD
