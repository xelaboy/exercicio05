#!/bin/bash
#
#
let VAL=0
let SAL=0
#
for SAL in $(cat tempSal.csv)
do
 echo $SAL
 VAL=$(echo "$VAL + $SAL"|bc)
done
#
echo
echo Soma de todos os salarios = $VAL
echo
#
#
#
