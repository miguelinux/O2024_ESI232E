Algoritmo loteria
	
	num1comp <- azar(10)
	num2comp <- azar(10)
		
	Escribir "Ingresa un número:"
	Leer num1usuario
	
	Escribir "Ingresa otro número:"
	Leer num2usuario
	
	Si num1comp = num1usuario y num2comp = num2usuario Entonces
		Escribir "Ganaste 10,000 pesos"
	SiNo
		Si num1comp = num2usuario y num2comp = num1usuario Entonces
			Escribir "Ganaste 3,000 pesos"
		SiNo
			Si num1comp = num1usuario o num1comp = num2usuario o num2comp = num1usuario o num2comp = num2usuario Entonces
				Escribir "Ganaste 1,000 pesos"
			SiNo
				Escribir "No Ganaste"
			FinSi
		FinSi
	FinSi
	
FinAlgoritmo
