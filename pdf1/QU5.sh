#!/bin/bash

MAXCOUNT=9
count=1

echo "The numbers rpeated twice in range 1-100:"
i=1
while [ $i -le 9 ]
do

while [ "$count" -le "$MAXCOUNT" ];
do
	num[$count]=`expr 11 \* $i`
	i=`expr $i + 1`
	let "count += 1"
done
done
echo "${num[@]}"
