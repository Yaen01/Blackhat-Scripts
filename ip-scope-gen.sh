#!/bin/bash

read -p "Name output file: " outputFile

read -p "Enter start of IP Range: " startScope

read -p "Enter end of IP Range: " endScope

touch outputFile

for ((i=$startScope; i <= $endScope; ++i)); do

	echo Adding 0.0.0.$i to $outputFile
	echo 10.0.0.$i >> $outputFile
done