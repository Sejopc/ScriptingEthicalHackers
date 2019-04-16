#!/bin/bash

read -p "Introduzca su distribucion favorita: " distro

if [ $distro == "FSecurity" ]
then
	echo "A todos nos gusta FSecurity"
else
	if [ $distro == "Debian" ]
	then
		echo "Debian es el maestro"
	else
		echo "$distro esta bien, pero pruebe FSecurity"
	fi
fi
