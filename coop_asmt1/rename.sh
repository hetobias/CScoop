#!/bin/bash

for file in `ls *.txt`
do
	lines=$(wc -l < $file)
	if [ "$lines" -eq "0" ]
	then 
		rm $file
        echo removed $file because it was empty
	elif [ "$lines" -lt "10" ]
	then
		mv $file "short_$file"
        echo renamed $file to short_$file 
	elif [ "$lines" -ge 10 ] && [ "$lines" -le 20 ]
	then
		mv $file "medium_$file"
        echo renamed $file to medium_$file 
	elif [ "$lines" -gt 20 ]
	then
		mv $file "long_$file"
        echo renamed $file to long_$file 
	fi
done