#!/bin/bash
HEX=$(echo -n $1 | xxd -ps -c 200 | tr -d '\n')
OUTPUT=''

for (( i=0; i<${#HEX}; i+=2 )); do
	OUTPUT="${OUTPUT}00${HEX:$i:2}"
done

echo $OUTPUT
