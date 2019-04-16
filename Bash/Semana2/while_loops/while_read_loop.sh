#/bin/bash

# Para leer un archivo linea por linea, se ejecuta el siguiente while loop:
# linea es simplemente una variable que hemos decidido nombrar de esa forma. Podemos usar cualquiera

while read linea
do
	echo $linea
done < nombres
