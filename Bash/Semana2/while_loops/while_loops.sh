#!/bin/bash

# Forma de la estructura while:
# while condicion
# do
#	comandos
# done

CONTADOR=1

while [ $CONTADOR -le 10 ]
do
	echo $CONTADOR
	((CONTADOR++)) # Note we DONT specify "$" on the variable when incrementing.
done
echo "Terminado"
