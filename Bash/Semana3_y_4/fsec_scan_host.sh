#  Creacion de una herramienta para saber si un host esta vivo y cuales puertos tiene abiertos.
#
#!/bin/bash

host=$1
startport=$2
stopport=$3

pingcheck(){
	ping=`ping -c 1 $host | grep bytes | wc -l`
	if [ $ping -gt 1 ]; then
		echo "$host is up"
	else
		echo "$host is down, quitting..."
		exit
	fi
}

portcheck(){
	for ((counter=$startport; counter<=$stopport; counter++))
	do
		(echo "Are you open?" > /dev/tcp/$host/$counter) > /dev/null 2>&1 && echo "$counter -> Open"
	done
}

pingcheck
portcheck
