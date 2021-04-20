#!/bin/bash
#
cat RelFolhaPagto.xml | awk -F "<[^>]+>" 'BEGIN { found=0 } \
/row id/ {found=1}
/^            <column-0>/ {c0=$2} \
/^            <column-1>/ {c1=$2} \
/^            <column-2>/ {c2=$2} \
/^            <column-3>/ {c3=$2} \
/^            <column-4>/ {c4=$2} \
/^            <column-5>/ {c5=$2} \
/^            <column-6>/ {c6=$2} \
/^            <column-7>/ {c7=$2} \
/^            <column-8>/ {c8=$2} \
/^            <column-9>/ {c9=$2} \
/^            <column-10>/ {c10=$2} \
/^            <column-11>/ {c11=$2} \
/^            <column-12>/ {c12=$2} \
{if(found==1)printf "%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s\n", c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12; found=0}' > arquivo.csv
#
cat arquivo.csv | awk -F";" '{print $13}' | sed 's/\.//g' | sed 's/,/./' | awk '{ total+= $1} END { printf "%.2f",  total}'
#
