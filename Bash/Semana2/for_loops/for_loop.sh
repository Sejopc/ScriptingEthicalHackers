#!/bin/bash

# Estructura de un for loop
# for variable [in lista]
# do
# 	ejecucion
# done

for i in 1 2 3 4 5
do
	echo "Cuenta $i"
done
echo
echo "--------------"

for j in {2..10..2}
do
	echo "$j es par"
done
# En versiones anteriores a la V3 de Bash, se utilizaba el comando 'seq' para sacar una lista de valores incrementables. Ahora no es necesario, despues de la version V4 ya que lo podemos
# conseguir usando la sintaxis: {primer numero..ultimo numero..incremento}
echo
echo "-------------"
for (( c=1; c<=5; c++ ))
do
	echo "Valor de 'c' es: $c"
done
