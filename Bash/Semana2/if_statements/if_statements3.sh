#!/bin/bash

read -p "Introduzca su distribucion favorita: " distro

if [ $distro == "FSecurity" ]
then
	echo "A todos nos gusta FSecurity"
elif [ $distro == "Debian" ]
then
	echo "Muy bien por Debian, intente instalar FSecurity"
else
	echo "$distro esta bien. Pero pruebe FSecurity"
fi

