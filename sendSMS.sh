#!/bin/bash
NUMBER=$1

HEX=$(echo -n $2 | xxd -ps -c 200 | tr -d '\n')
MSG=''

for (( i=0; i<${#HEX}; i+=2 )); do
	MSG="${MSG}00${HEX:$i:2}"	
done

CMD="curl -d \"isTest=false&goformId=SEND_SMS&notCallback=true&Number=${NUMBER}&sms_time=20%3B05%3B01%3B06%3B59%3B58%3B-4&MessageBody=${MSG}&ID=-1&encode_type=GSM7_default\" http://192.168.0.1/goform/goform_set_cmd_process"
while read LINE
	do CMD="${CMD} -H \"$LINE\" "
done < headers.txt

#echo $CMD
eval $CMD
