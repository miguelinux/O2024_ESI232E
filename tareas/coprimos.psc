Algoritmo coprimos
	
	Escribir "Ingresa un número:"
	Leer num1
	
	Escribir "Ingresa otro número:"
	Leer num2
	
	Si num1 < num2 Entonces
		minimo <- num1
	SiNo
		minimo <- num2
	FinSi
	
	contador <- 1
	mcd <- 1
	mientras contador <= minimo Hacer
		residuo1 <- num1 % contador
		residuo2 <- num2 % contador
		
		si residuo1 = 0 y residuo2 = 0 Entonces
			mcd <- contador
		FinSi
		
		contador <- contador + 1
	FinMientras
	
	Escribir mcd
	
	si mcd = 1 Entonces
		Escribir "Los números ", num1, " y ", num2, " son coprimos"
	FinSi
	
	
FinAlgoritmo
