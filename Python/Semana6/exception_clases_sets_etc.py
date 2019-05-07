#!/usr/bin/env python3

import math

try:
	print("Estoy programando")
	math.foo()
	print("Todavia continuo programando")
except AttributeError:
	print("El modulo 'math' no continue ninguna funcion llamada 'foo'.")

#Una forma de agregar varios except errors en una sola linea:
# except(ValueError, TypeError, NameError, SyntaxError, AttributeError):
#	print("Ocurrio un error...")

# ======================================================================

# Tambien se pueden separar los exceptions, ej:
# except ValueError as e:
#	print("Error: %s", % e)
# except ZeroDivisionError as e:
#	print("Error: %s", % e)
# except:
#	print("Que esta pasando?")

# =======================================================================

# Else: se ejecuta si no se produce ninguna excepcion
# Finally: se ejecuta en cualquier caso (se produzca o no una excepcion)
try:
	file = open("/usr/share/wordlist/rockyou.txt")
except IOError:
	print("No es posible abrir el diccionario...")
else:
	print(file.read())
	file.close()
finally:
	print("Fin del intento...")

# =======================================================================

# try:
#	codigo...
# except IOError as e:
#	print(e.error, e.filename, e.strerror)
# 	print(e)

# =======================================================================

# Excepciones en las llamadas a funciones:

# draw()
#	rectangle()
#		line() --> line method devuelve un error, y se devuelve la llamada al methodo parent (rectangle(), el cual a su vez la devuelve a draw())


# =======================================================================

# raise -> Levante una excepcion manualmente

# =======================================================================

# Excepciones vs valores de verificacion
# if type(x) == int or type(x) == float:
#	return x ** 2
# else:
#	return None

# =======================================================================

# Declaracion with:

# with open("file.txt") as file:
# 	for line in file:
#		print(line)

# =======================================================================

# Metodo de clase _enter_(self) se ejecutara al principio
# Metodo de clase _exit_(self) se ejecutara al final

# =======================================================================

# Conjuntos (sets)
# s = {secuencia}
# Alternativa: s = ([secuencia])
# Conjunto constante: s = frozenset([])
# Conjunto vacio: s.issubset(...), s <= t
# Subconjunto estricto: s < t
# Superconjunto: s.issuperset(t), s >= t
# Superconjunto estricto: s > t
