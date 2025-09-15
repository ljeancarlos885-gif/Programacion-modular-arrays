Funcion ingresar_horas(horas Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 3 Hacer
        Escribir "Ingrese las horas trabajadas por la persona ", i, ":"
        Leer horas[i]
    FinPara
FinFuncion

Funcion ingresar_tarifas(tarifas Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 3 Hacer
        Escribir "Ingrese la tarifa por hora de la persona ", i, ":"
        Leer tarifas[i]
    FinPara
FinFuncion

Funcion calcular_costos(horas Por Referencia, tarifas Por Referencia, costos Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 3 Hacer
        costos[i] <- horas[i] * tarifas[i]
    FinPara
FinFuncion

Funcion mostrar_costos(costos Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 3 Hacer
        Escribir "El costo total para la persona ", i, " es: $", costos[i]
    FinPara
FinFuncion

Algoritmo calcular_costo_funcion_de_tiempo
    Dimensionar  horas[3],  tarifas[3], costos[3]
	
    Definir optiion Como Entero
	
    Repetir
        Escribir ""
        Escribir "1. Ingresar horas trabajadas"
        Escribir "2. Ingresar tarifas por hora"
        Escribir "3. calcular costos"
        Escribir "4. mostrar costos"
        Escribir "5. salir"
        Escribir "elige una opción:"
        Leer option
		
        Segun option Hacer
            1:
                ingresar_horas(horas)
            2:
                ingresar_tarifas(tarifas)
            3:
                calcular_costos(horas, tarifas, costos)
            4:
                mostrar_costos(costos)
            5:
                Escribir "saliendo del programa..."
            De Otro Modo:
                Escribir "opcion invalida vuelve a intentarlo"
        FinSegun
    Hasta Que option = 5
	
FinAlgoritmo
