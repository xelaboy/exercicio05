#!/bin/bash
#
#
sed "s/>/\n/g" RelFolhaPagto.xml > temp.xml
#
egrep -i column-12 temp.xml | egrep -v "<column-12" | cut -d"<" -f1 | sed "s/\.//g" | sed "s/,/\./g" > tempSal.csv
#
#
#
