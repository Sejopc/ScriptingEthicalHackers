# Creacion de un escaner de puertos TCP con Bash.
#

#!/bin/bash

# Defining the variables
IP=$1
FirstPort=$2
LastPort=$3

function_portscan(){
	for ((counter=$FirstPort; counter<=$LastPort; counter++))
	do
		(echo "Are you open?" > /dev/tcp/$IP/$counter) > /dev/null 2>&1 && echo "$counter -> Open"
	done
}

function_portscan
