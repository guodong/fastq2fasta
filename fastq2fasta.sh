#!/bin/bash
rm -rf ${2}
n=$(grep @ -n ${1}|cut -d: -f1)
for i in $n
do
	echo $i
	sed -n ${i}p ${1} >> ${2}
	j=$[$i+1]
	sed -n ${j}p ${1} >> ${2}
done


