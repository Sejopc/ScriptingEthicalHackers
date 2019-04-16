#!/bin/bash

for (( i=0; i<3; i++ ))
do
	date # La primera fecha la mostramos en pantalla
	date >> fecha.txt # La segunda la redirigimos al arhcivo 'fecha.txt'
	sleep 1
done
