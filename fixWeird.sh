#!/bin/bash

directoryName=$1

for fileName in $(ls $directoryName);
do

	if [[ ${fileName:0:1} =~ [aeiou] && ${fileName:fileName-1:1} =~ [aeiou] ]]
	then

		chmod -w $directoryName/$fileName

	fi
done
