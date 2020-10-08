#!/bin/bash
indexOne=0
function myprime()
{
        arr=$1
        for (( index=2; $index<=$num; index++ ))
        do
                if [ $(($num%$index)) -eq 0 ]
                then
                        arr[indexOne]=$index
                        ((indexOne++))
                        num=$(($num/$index))
                fi

                if [ $(($num%$index)) -eq 0 ]
                then
                        ((index--))
                fi
        done
        echo "${arr[@]}"
}
read -p "Enter a number: " num
echo "Prime factors of Number are" "$( myprime $((number)))"
