#!/bin/bash

echo "Introduzca un valor: "
read valor

if  [ $valor -ge 5 ]
then
	echo "El valor introducido es mayor o igual que 5"
else
	echo "El valor introducido es menor que 5"
fi


