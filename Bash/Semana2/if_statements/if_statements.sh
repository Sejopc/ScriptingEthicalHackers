#!/bin/bash

read -p "Introduzca el nombre de su Distribucion favorita: " distro

if [ $distro == "FSecurity" ]
	then
		echo "A todos nos gusta FSecurity"
	else
		echo "$distro esta bien. Pero pruebe FSecurity"
fi

