#!/bin/bash

counter=0
Fruit[((counter++))]="Apple"
Fruit[((counter++))]="Banana"
Fruit[((counter++))]="Orange"

echo ${Fruit[@]}
echo ${Fruit[0]}
echo ${#Fruit[@]}
echo ${#Fruit[2]}
echo ${Fruit[@]}



