Funcion ingresar_temperatura_celcius(temp_celcius Por Referencia)
	Definir i Como Entero
	Para i <- 1 Hasta 2 Con Paso 1 Hacer
		Escribir "Ingrese la temperatura Celsius ", i, ":"
		Leer temp_celcius[i]
	Fin Para
FinFuncion

Funcion convertir_de_celcius_fahrenheit(temp_celcius, temp_fahrenheit Por Referencia)
	Definir i Como Entero
	Para i <- 1 Hasta 2 Con Paso 1 Hacer
		temp_fahrenheit[i] <- (temp_celcius[i] * 9 / 5) + 32
	Fin Para
FinFuncion

Funcion mostrar_resultado(temp_celcius, temp_fahrenheit)
	Definir i Como Entero
	Para i <- 1 Hasta 2 Con Paso 1 Hacer
		Escribir "Temperatura ", i, ": ", temp_celcius[i], "°C = ", temp_fahrenheit[i], "°F"
	Fin Para	
FinFuncion

Algoritmo convertir_de_celcius_a_fahrenheit
	
	Dimensionar temp_fahrenheit[2], temp_celcius[2] 
	Definir option Como Entero
	
	Repetir
		Escribir ""
		Escribir ">>>>> CONVERSIÓN DE CELSIUS A FAHRENHEIT <<<<<"
		Escribir "1. Ingresar temperaturas en Celsius"
		Escribir "2. Convertir de °C a °F"
		Escribir "3. Salir"
		Escribir "Elija una opción:"
		Leer option 
		
		Segun option Hacer
			1:
				ingresar_temperatura_celcius(temp_celcius)
			2:
				convertir_de_celcius_fahrenheit(temp_celcius, temp_fahrenheit)
				mostrar_resultado(temp_celcius, temp_fahrenheit)
			3:
				Escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "Opción inválida. Vuelve a intentarlo."
		Fin Segun
	Hasta Que option = 3
	
FinAlgoritmo
