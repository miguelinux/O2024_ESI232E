Algoritmo adivina
	
	num_comp <- azar(9) + 1
	
	Escribir "Adivina el número que estoy pensando:"
	Leer num_usuario
	
	mientras num_comp <> num_usuario hacer
		Escribir "No, ese no es, intenta de nuevo:"
		Leer num_usuario
	FinMientras
	
	Escribir "Felicidades Adivinaste"
	
FinAlgoritmo
