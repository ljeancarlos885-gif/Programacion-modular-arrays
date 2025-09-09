Funcion ingresar_numeros(lista Por Referencia)
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir "Ingresa un número para la posición ", i, ":"
		Leer lista[i]
	FinPara
FinFuncion

Funcion suma <- sumar_numeros(lista)
	Definir suma Como Entero
	suma <- 0
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		suma <- suma + lista[i]
	FinPara
FinFuncion

Algoritmo sumar_5_numeros
	Definir lista Como Entero
	Dimensionar lista[5]
	Definir opcion Como Caracter
	
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		lista[i] <- 0
	FinPara
	
	Repetir
		Escribir "** MENU INTERACTIVO **"
		Escribir "1. Ingresar numeros"
		Escribir "2. Sumar numeros"
		Escribir "3. Salir"
		Escribir "Elige tu opcion de preferencia:"
		Leer opcion
		
		Segun opcion Hacer
			"1":
				
				ingresar_numeros(lista)
			"2":
				
				si lista[1] <> 0 Entonces
					Escribir "La suma de los numeros es: ", sumar_numeros(lista)
				SiNo
					Escribir "Primero debes ingresar los numeros (opcion 1)."
				FinSi
			"3":
				Escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "Opcion incorrecta. Intenta nuevamente."
		Fin Segun
		
	Hasta Que opcion = "3"
FinAlgoritmo