#!/bin/bash

echo "Enter integers for array, space separated:" 
read -a nums

echo "Enter target value:"
read target

if [[ -z "$nums" || -z "$target" ]]; then
	echo "No input entered for one or more values, try again."
fi

for ((i=0; i < ${#nums[@]}; i++)); do
	for ((j=i + 1; j < ${#nums[@]}; j++)); do
		if ((nums[i] + nums[j] == target)); then
			echo "Values: ${nums[i]},${nums[j]} at [${i},${j}]"
		fi
	done
done
