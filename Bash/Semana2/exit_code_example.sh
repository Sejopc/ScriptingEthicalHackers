#!/bin/bash

# Script que solicita una cadena a buscar entre todos los archivos de un directorio dado
clear

read -p "Introduzca la ruta absoluta de un archivo especifico: " ruta
read -p "Introduzca la cadena a buscar en dicho archivo: " cadena

#Redireccionamos las salidas tanto estandar como de errores, para que no aparezca nada en pantalla.

grep -r $cadena $ruta >/dev/null 2>&1

# Podriamos asignarle el exit code a una variable, i.e:
# EXITCODE=$(echo $?)
# case $EXITCODE in

# Sin embargo, lo haremos directamente:
case $? in
	0) 
		echo "Se encontraron coincidencias"
		exit 0 # Satisfactoriamente, asi que devolvemos un 0.
		;;
	1)
		echo "No se encontraron coincidencias"
		exit 0 # Aunque el comando grep devuelva un exit code '1', queremos mostrar un 0, ya que asi lo queremos
		;;
	2)
		echo "Compruebe el nombre/ruta del archivo"
		exit 2
		;;
	*)
		echo "Error no contemplado"
		exit3
		;;
esac
