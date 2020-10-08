#!/bin/bash
mysort() {
echo "Array created: ${num[@]}"
echo "Sorted Array:"
printf '%s\n' "$@" | sort -n
}

MAXCOUNT=10
count=1

while [ "$count" -le "$MAXCOUNT" ];
do
        num[$count]=$(( RANDOM % (999 - 100 + 1) + 100 ))
        let "count += 1"
done
mysort "${num[@]}"

largest=${num[0]}
secondLargest='unset'

for((i=1; i < ${#num[@]}; i++))
do
if [[ ${num[i]} > $largest ]]
then
        secondLargest=$largest
        largest=${num[i]}
elif (( ${num[i]} != $largest )) && { [[ "$secondLargest" = "unset" ]] || [[ ${num[i]} > $secondLargest ]]; }
then
        secondLargest=${num[i]}
fi
done
echo "Second Largest number:" $secondLargest

smallest=${num[i]}
secondSmallest='unset'

for((i=1; i < ${#num[@]}; i++))
do
if [[ ${num[i]} < $smallest ]]
then
        secondSmallest=$smallest
        smallest=${num[i]}
elif (( ${num[i]} != $smallest )) && { [[ "$secondSmallest" = "unset" ]] || [[ ${num[i]} < $secondSmallest ]]; }
then
        secondSmallest=${num[i]}
fi
done
echo "Second Smallest number:" $secondSmallest

