#!/bin/bash

CMD='curl -v -d "isTest=false&goformId=SEND_SMS&notCallback=true&Number=13880&sms_time=20%3B05%3B01%3B06%3B59%3B58%3B-4&MessageBody=004E004100530054004100560049&ID=-1&encode_type=GSM7_default" http://192.168.0.1/goform/goform_set_cmd_process'
while read LINE
	do CMD="${CMD} -H \"$LINE\" "
done < headers.txt

#echo $CMD
eval $CMD
