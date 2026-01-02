#!/bin/bash

declare -A map
	map["I"]=1
	map["V"]=5
	map["X"]=10
	map["L"]=50
	map["C"]=100
	map["D"]=500
	map["M"]=1000

s=$1
currNum=0
lastNum=0

for ((i=${#s}-1; i>=0; i--)); do
	# extract 1 character at position i from char s
	val=${map[${s:$i:1}]}
	if ((val < lastNum)); then
		((currNum -= val))
	else
		((currNum += val))
	fi
	lastNum=$val
done

echo $currNum

	
