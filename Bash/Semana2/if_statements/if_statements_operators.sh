#!/bin/bash
#
# En este ejemplo comprobaremos cadenas
#

# Le pedirimos al usuario que escriba 2 textos, que seran guardados en variables diferentes
read -p "Escriba un texto: " texto1
read -p "Escriba otro texto: " texto2

# Comprobaremos si alguna cadena de texto es vacia (el usuario no escribio nada)
# Para que comprobemos texto, debemos encerrar la variable entre doble comilla

if [ -z "$texto1" -o -z "$texto2" ]; then
# Si entra en esta condicion, no se necesita continuar con el script, por lo que provocamos la salida del mismo, con un valor de '1'.
# 'exit' es la palabra que finaliza el script, y que el valor '1' es el codigo de retorno del script, porque asi lo hemos indicado.
	echo "Uno de los textos esta vacio..."
	exit 1 # 1 es codigo de error
fi


# Una vez hemos pasado la condicion de arriba, sabemos que es porque ambas variables contienen texto... entonces proseguimos con la siguiente condicion

# Comprobamos si texto1 es igual a texto2
if [ "$texto1" == "$texto2" ]
then
	echo "$texto1 --- es igual a --- $texto2"
elif [ "$texto1" != "$texto2" ]; then # Por logica es obvio que si no ingreso a la condicion de arriba, es porque los textos no son iguales, y pudimos simplemente haber puesto un 'else'...
	# Usamos \" para escapar las comillas dobles
	echo "El texto \"$texto1\" y el texto \"$texto2\" no son iguales..."
fi
