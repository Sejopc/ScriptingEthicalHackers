#!/bin/bash

read -p "No es vale la mujer mas hermosa de el universo? [S/N]: " opcion

case $opcion in
	s|S|Si|si|sI|SI)
		echo "Asi me gusta... que me la halaguen :D"
		;;
	n|N|No|no|nO|NO)
		echo "Pues creame que su novia|esposa, tampoco lo es... carepinga"
		;;
	*)
		echo "Esa no es una opcion valida"
		;;
esac
