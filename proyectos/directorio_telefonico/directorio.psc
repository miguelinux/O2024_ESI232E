Funcion python ( instruccion )
	Escribir "python: ", instruccion
Fin Funcion

Funcion agregar
	Escribir "Escribe el nombre: " Sin Saltar
	Leer nombre
	Escribir "Escribe el teléfono: " Sin Saltar
	Leer telefono
	Escribir "Escribe el dirección: " Sin Saltar
	Leer direccion
	python("open(ARCHIVO,a)")
	python("archivo.write")
	python("archivo.close")
Fin Funcion

Funcion mostrar_dir
	python("open(ARCHIVO,r)")
	python("lector = reader")
	contador <- 1
	Escribir " ------- Directorio ---------------"
	Escribir " No.   Nombre   Telefono  Dirección"
	Para file <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir contador, "   nombre   telefono  dirección"
		contador <- contador + 1
	Fin Para
	python("archivo.close")
Fin Funcion

Funcion borrar_dir ( num )
	python("archivo = open(ARCHIVO,r)")
	python("temporal = open(ARCHIVO,r)")
	python("lector = reader(archivo)")
	python("escritor = writer(archivo)")
	contador <- 0
	Para fila <- 1 Hasta 5 Hacer
		Si num = fila Entonces
			contador <- contador +1 
		FinSi
		python("escritor.writerow")
		contador <- contador +1 
	Fin Para
	python("archivo.close")
	python("temporal.close")
	python("remove(ARCHIVO)")
	python("rename(temporal)")
Fin Funcion

Funcion opcion_del_menu <- menu
	Escribir " -----------  Menú -----------------"
	Escribir " 1. Agregar"
	Escribir " 2. Mostrar"
	Escribir " 3. Elimintar"
	Escribir " 4. Salir"
	Escribir "Opcion: "
	Leer opcion_del_menu
Fin Funcion

Algoritmo directorio_telefonico
	
	opcion_menu <- 0 
	
	Mientras opcion_menu <> 4 Hacer
		opcion_menu <- menu()
		Si opcion_menu = 1 Entonces
			agregar()
		FinSi
		Si opcion_menu = 2 Entonces
			mostrar_dir()
		FinSi
		Si opcion_menu = 3 Entonces
			mostrar_dir()
			Escribir "Escribe el número para eliminar:"
			Leer num
			Escribir "Estas seguro (S/n):" Sin Saltar
			Leer si_borrar
			Si si_borrar = "s" o si_borrar = "O" Entonces
				borrar_dir(num)
			FinSi
		FinSi
	FinMientras
FinAlgoritmo
