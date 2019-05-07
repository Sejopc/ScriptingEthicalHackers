#!/usr/bin/env python3

# Diccionarios
# Tambien conocidos como: Hash, Map, Associative Array

# Mapeos de llave => Value
# Llaves siempre estan desordenadas.

# ====================================================

# Iteracion con diccionarios:

for key in store:
	print(key)

# Comparando 2 diccionarios:

store == pool

# No permitido utilizar: >, >=, <, <=, <>, en comparaciones de diccionarios.

# =====================================================

# Operaciones con diccionarios:

# Borrar una entrada: del()
# Borrar todas las entradas: store.clear()
# Copiar una entrada: store.copy()
# Si contiene una clave: key in store
# Quitar y devolver la entrada: store.pop(key)[,default]
# Eliminar y devolver entradas arbitrarias: store.popitem()

# =======================================================

# Vistas en diccionarios:

# Crear una vista: items(), keys(), values()
# Lista de todas las tuplas {clave: valor} => store.items()

# =======================================================

# Programacion Orientada a Objetos (OOP)

# 1) Hasta el momento: Una programacion procesal
# 2) Datos: (Valores, Variables, Parametros)
# 3) Funciones (Toman variables y parametros y devuelven resultados)
# 4) Tienen dependencias
# Ejemplo de creacion de clase:
# class Point():
# p = Point()
# p.x = 2.0
# p.y = 3.0

# ========================================================

# class Point:
#...     def __init__(self, x ,y):
#...             self.x = x
#...             self.y = y
#...
#>>> p = Point(2.0,3.0)
# print(p.x, p.y)
# p.x = 2.5
# p.y = 42

# La funcion "_init_" se llama automaticamente despues de crear un objecto.
# =========================================================

# Metodos sobre objetos:
#>>> class Point:
#...     def __init__(self, x, y):
#...             self.x = x
#...             self.y = y
#...     def norm(self):
#...             n = self.x ** 2 + self.y ** 2
#...             return n
#...
#>>> p = Point(2.0, 3.0)
#print(p.x, p.y, p.norm())

# Llamada tradicional: self

# Convertir objetos en cadenas:
# Valor de retorno predeterminado de str(...) para objetos de clases personalizadas
# Comparacion de objetos:
# p1 = Point(2.0, 3.0)
# p2 = Point(2.0, 3.0)
# p1 == p2 # False -> Los objetos son distinos aunque tengan la misma declaracion de clase.

# ============================================================

# def _eq(self, other):
#	return (self.x == other.x) and (self.y == other.y)  ==> False

# Sobrecarga de operadores (overloading)
# Operadores relacionales

# <: __lt__(self, other) -> less than
# <=: __le__(self, other) -> less or equals than
# !=: __ne__(self, other) -> not equals than
# >: __gt__(self, other) -> greater than
# >=: __ge__(self, other) -> greater or equals than

# Operadores numericos
# +: __add__(self, other)
# -: __sub__(self, other)
# *: __mul__(self, other)

# ==============================================================

# Emulacion de tipos de datos incorporados:

# Numeros aritmeticos: float(myobj), int(myobj)
# Funciones: func_name(myobj())
# Secuencias: myobj(...), len(myobj), x in myobj
# Iteratores: for i in myobj

# ==============================================================

# >>> class Point():
#...     count = 0
#...     def __init__(self, x, y):
#...             Point.count += 1
#...
#>>> p = Point(2,3)
#>>> p.count
#1

# ==============================================================

# Metodos estaticos y de clase.
#>>> class Spam():
#...     Spam = "I don't like spam:"
#...     @classmethod
#...     def cmethod(cls):
#...     @staticmethod
#...	def smethod():
#...	print("blah blah")

# Herencia:

#1) A menudo hay clases que son muy similares entre si:
#2) La herencia permite: una estructura jerarquica de la clase (una relacion)
#3) Reutilizacion de codigo.

# Ejemplo con telefonos:

#*) Telefono
#*) Telefono movil: Telefono con funcionalidad adicional
#*) Telefono inteligente: Smarthpone. Telefono movil pero con funcionalidad adicional.
