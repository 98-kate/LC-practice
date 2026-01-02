#!/bin/bash

if [[ "$#" -ne 1 ]]; then
	echo "ERROR: No integer entered - please enter a single integer value."
	exit 1
fi

num=$1
temp=$num
reverse=0

if (( num < 0 )); then
	 echo "False"
	 return
fi

while (( temp > 0 )); do
	(( reverse = (reverse * 10) + temp % 10 ));
	(( temp = temp/10 ))
done

if (( reverse == num )); then
	printf "True \n"
else
	printf "False \n"
fi
