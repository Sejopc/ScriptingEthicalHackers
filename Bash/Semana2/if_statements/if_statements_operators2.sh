#!/bin/bash

#
# Comparacion de valores numericos
#

read -p "Introduce el primer numero: " NUM1
read -p "Introduce el segundo numero: " NUM2
read -p "Introduce el tercer numero: " NUM3

# Usar '&&' es lo mismo que utilizar el operador '-a', que significa 'AND'
if [ $NUM1 -ne $NUM2 ] && [ $NUM1 -ne $NUM3 ]
then
	echo "$NUM1 es diferente a $NUM2 y $NUM3"
fi

# Usar '||' es lo mismo que utilizar el operador '-o', que significa 'OR'
if [ $NUM1 -gt $NUM2 ] || [ $NUM1 -gt $NUM3 ]
then
	echo "$NUM1 NO es el menor de los numeros"
fi

