#!/bin/bash

#Conducts a ping sweep and outputs a file with the machine name and IP of online machines
#Developed by J4YT0RR3S

touch results.txt
touch ipResults.txt
touch nameResults.txt

for i in $(cat {path_of_scope}); do
	if ping -c 1 $i &> /dev/null; then
		echo ""
		clientName=$(nslookup $i | cut -d . -f 6 | cut -d = -f 2 | cut -d " " -f 2)
		echo "$clientName is online"

		echo $clientName >> nameResults.txt
		echo $clientName >> results.txt

		echo $i >> ipResults.txt
		echo $i >> results.txt
	else
		echo ""
		echo "$i is offline"
	fi
done

echo "Script has successfully ran a ping sweep against the RHEL scope"
	
		