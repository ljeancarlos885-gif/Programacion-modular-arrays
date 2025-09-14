Funcion ingresar_ventas_semana(ventas Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        Escribir "Ingrese la venta del día ", i, ":"
        Leer ventas[i]
    FinPara
FinFuncion

Funcion total <- sumar_ventas_semanas(ventas Por Referencia)
    Definir i Como Entero
    Definir suma Como Real
    suma <- 0
	
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        suma <- suma + ventas[i]
    FinPara
	
    total <- suma
FinFuncion

Funcion ingresar_gastos_semana(gastos Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        Escribir "Ingrese el gasto del día ", i, ":"
        Leer gastos[i]
    FinPara
FinFuncion

Funcion ganancia <- calcular_ganancia_neta(ventas Por Referencia, gastos Por Referencia)
    Definir i Como Entero
    Definir total_ventas, total_gastos Como Real
    total_ventas <- 0
    total_gastos <- 0
	
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        total_ventas <- total_ventas + ventas[i]
        total_gastos <- total_gastos + gastos[i]
    FinPara
	
    ganancia <- total_ventas - total_gastos
FinFuncion

Algoritmo calcular_ganancia_neta
    Dimensionar  ventas[5], gastos[5]
    Definir total Como Real
    Definir ganancia Como Real
    Definir option Como Entero
	
    total <- 0
    ganancia <- 0
	
    Repetir
        Escribir ""
        Escribir "1. Ingresar ventas de la semana"
        Escribir "2. Calcular suma total de ventas"
        Escribir "3. Ingresar gastos de la semana"
        Escribir "4. Calcular ganancia neta"
        Escribir "5. Salir"
        Escribir "Elige una opción:"
        Leer option
		
        Segun option Hacer
            1:
                ingresar_ventas_semana(ventas)
            2:
                total <- sumar_ventas_semanas(ventas)
                Escribir "El total de ventas en la semana es: ", total
            3:
                ingresar_gastos_semana(gastos)
            4:
                ganancia <- calcular_ganancia_neta(ventas, gastos)
                Escribir "La ganancia neta es: ", ganancia
            5:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opción inválida. Intenta de nuevo."
        FinSegun
    Hasta Que option = 5
FinAlgoritmo
