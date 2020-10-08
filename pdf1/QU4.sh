#!/bin/bash

arr=(2 -1 -1 2 -1)
echo ${arr[@]}

for(( index=0; index<5; index++ ))
do
	for(( indexOne=index+1; indexOne<5; indexOne++ ))
	do
		for(( indexTwo=indexOne+1; indexTwo<5; indexTwo++ ))
		do
			if [ $(($((arr[index]))+$((arr[indexOne]))+$((arr[indexTwo])))) -eq 0 ]
			then
				echo "${arr[index]} ${arr[indexOne]} ${arr[indexTwo]}"
			fi
		done
	done
done
