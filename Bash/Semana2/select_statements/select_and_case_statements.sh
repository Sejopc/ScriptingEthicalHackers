#!/bin/bash

# La forma de la estructura SELECT (para crear menus), es la siguiente:
# select nombre in opcion1 opcion2 opcion3
# do
#	comandos...
# done

select OPCION in FSecurity Debian Otros Salir
do
	case $OPCION in
		FSecurity)
			echo "Selecciono usted: $OPCION"
			;;
		Debian)
			echo "Selecciono usted: $OPCION. Esta preparado para utilizar FSecurity"
			;;
		Otros)
			echo "Hagase un favor a usted mismo e instalese FSecurity"
			;;
		Salir)
			echo "Hecho... adios!"
			exit
			;;
	esac
done
