#!/bin/bash

# El bucle 'until' continua ejecutando comandos mientras se cumpla la condicion. Una vez dicha condicion sea verdadera, se sale del bucle.
# Forma de la estructura:

# until condicion
# do
#	comandos
# done

# Diferencias bucle 'until' y 'while'
# 1 - El bucle 'until' se ejecuta mientras la condicion retorna un valor "nozero". En otras palabras, mientra sea 'False', se ejecutara, hasta que la condicion llegue a ser 'True'
# 2 - El bucle 'while' se ejecuta mientras la condicion retorna un valor "zero". En otras palabras, mientras sea 'True', se ejecutara, hasta que la condicion llegue a ser 'False'
# 3 - El bucle 'until' siempre se ejecuta por lo menos una vez

i=1

until [ $i -gt 10 ] 
do
	echo $i
	((i++))
done
