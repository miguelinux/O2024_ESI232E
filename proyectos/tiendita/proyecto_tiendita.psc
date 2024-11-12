Funcion python ( comando )
	Escribir "Python: ", comando
Fin Funcion

Funcion carrito_mostrar( nombre_archivo )
	python("archivo = open("+nombre_archivo+")")
	total <- 0
	Para producto <- 1 Hasta 5
		python("seek(0)")
		Para linea <- 1 Hasta 5
			python("lista = linea.split")
			lista <- 5
			Si producto = lista Entonces
				python("carito.append")
			Fin Si
		Fin Para
	Fin Para
	Escribir "No.   Nombre   Cantidad   P.Unit.   Precio"
	Para indice <- 1 Hasta 5
		Escribir indice,"  nombre   cantidad   p.unit.   precio"
		total <- total + indice
	Fin Para
	Escribir "---------------------------"
	Escribir "Total: ", total
Fin Funcion

Funcion producto_mostrar(categoria, nombre_archivo )
	python("archivo = open("+nombre_archivo+")")
	num <- 1
	Escribir "No.   Nombre   Stock   Precio"
	Para linea <- 1 Hasta 5
		Si linea = num Entonces
			Escribir linea,"  nombre   stock   precio"
			num <- num + 1
		FinSi
	Fin Para
	Escribir "---------------------------"
	Escribir "Elije el número de producto a comparar, o 0 para regresar"
	Leer producto
	Si producto <> 0 Entonces
		Escribir "Cuantos articulños deseas comprar?"
		Leer cantindad
		python("carrito.append")
		python("carrito.cantidad")
	FinSi
	python("archivo.close")
Fin Funcion

Funcion menu_principal
	Escribir "   Menu principal"
	Escribir "1. Mostrar productos"
	Escribir "2. Mostrar carrito"
	Escribir "3. Mostrar cuenta total"
	Escribir "9. Salir"
	Escribir ""
Fin Funcion

Funcion menu_productos
	Escribir "   Menu productos"
	Escribir "1. Carnes frias"
	Escribir "2. Frutas y verduras"
	Escribir "3. Refrescos"
	Escribir "4. Lacteos"
	Escribir "5. Sabritas"
	Escribir "9. Salir"
	Escribir ""
Fin Funcion

Algoritmo proyecto_tiendita
	opcion_menu_principal <- 0
	opcion_menu_productos <- 0
	nombre_de_archivo <- "tiendita.csv"
	
	Mientras opcion_menu_principal <> 9 Hacer
		menu_principal
		Escribir "Opcion:"
		Leer opcion_menu_principal
		
		si opcion_menu_principal = 1 Entonces
			opcion_menu_productos <- 0
			Mientras opcion_menu_productos <> 9 Hacer
				menu_productos
				Escribir "Opcion: "
				Leer opcion_menu_productos
				Segun opcion_menu_productos Hacer
					1:
						producto_mostrar("carnes frias", nombre_de_archivo)
					2:
						producto_mostrar("frutas y verduras", nombre_de_archivo)
					3:
						producto_mostrar("refrescos", nombre_de_archivo)
					4:
						producto_mostrar("lacteos", nombre_de_archivo)
					5:
						producto_mostrar("sabritas", nombre_de_archivo)
				Fin Segun
			Fin Mientras
		FinSi
		
		si opcion_menu_principal = 2 Entonces
			carrito_mostrar(nombre_de_archivo)
		FinSi
		
		si  opcion_menu_principal = 3 Entonces
			Escribir "Mostrar cuenta total"
		FinSi
	Fin Mientras
FinAlgoritmo
