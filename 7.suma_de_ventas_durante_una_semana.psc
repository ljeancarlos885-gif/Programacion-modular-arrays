Funcion ingresar_ventas_semana(ventas Por Referencia)
	Definir i Como Entero
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
	    Escribir "Ingresa las ventas del día ", i, ":"
		Leer ventas[i]	
	Fin Para
FinFuncion

Funcion sumar_ventas_semana(ventas Por Referencia, total Por Referencia)
	Definir i Como Entero
	Definir suma Como Real
	suma <- 0
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		suma <- suma + ventas[i]
	Fin Para
	total <- suma
FinFuncion

Algoritmo suma_de_ventas_durante_una_semana
	Definir ventas Como Real
	Definir total_ventas Como Real
	Definir option Como Entero
	Dimensionar ventas[5]
	
	Repetir
		Escribir ""
		Escribir "1. Ingresar las ventas"
		Escribir "2. Total de ventas durante la semana"
		Escribir "3. Salir" 
		Escribir "Elije una opción:"
		Leer option
		
		Segun option Hacer
			1:
				ingresar_ventas_semana(ventas)
			2:
				sumar_ventas_semana(ventas, total_ventas)
				Escribir "La suma total de las ventas de la semana es: ", total_ventas
			3: 	
				Escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "Opción inválida. Vuelve a intentarlo." 
		Fin Segun
	Hasta Que option = 3
FinAlgoritmo
