#!/bin/bash

# Escribir en el fichero fecha_tee.txt, la fecha del sistema cada segundo, hasta 3 veces.

>fecha_tee.txt # Si existe el archivo, lo limpia. Si no existe, lo crea.

for ((i=0; i<3; i++))
do
	date | tee -a fecha_tee.txt # -a hace que tambien imprima en pantalla el output (y a la vez lo redireccione al archivo fecha_tee.txt
	sleep 1
done

