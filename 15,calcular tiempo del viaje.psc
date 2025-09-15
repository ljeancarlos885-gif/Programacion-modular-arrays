Funcion ingresar_tiempos_parciales(tiempos Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "Ingrese el tiempo (en horas) del tramo ", i, ":"
        Leer tiempos[i]
    FinPara
FinFuncion

Funcion calcular_tiempo_total(tiempos Por Referencia, total Por Referencia)
    Definir i Como Entero
    total <- 0
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        total <- total + tiempos[i]
    FinPara
FinFuncion

Funcion mostrar_tiempos_parciales(tiempos Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "Tiempo del tramo ", i, ": ", tiempos[i], " horas"
    FinPara
FinFuncion

Funcion mostrar_tiempo_total(total Por Valor)
    Escribir " Tiempo total de viaje: ", total, " horas"
FinFuncion

Algoritmo calcular_tiempo_viaje
	
    Dimensionar tiempos[3]
    Definir total Como Real
    Definir option Como Entero
	
    Repetir
        Escribir ""
        Escribir "1. ingresar tiempos parciales"
        Escribir "2. calcular tiempo total"
        Escribir "3. mostrar tiempos parciales"
        Escribir "4. mostrar tiempo total"
        Escribir "5. salir"
        Escribir "Elige una opción:"
        Leer option
		
        Segun option Hacer
            1:
                ingresar_tiempos_parciales(tiempos)
            2:
                calcular_tiempo_total(tiempos, total)
            3:
                mostrar_tiempos_parciales(tiempos)
            4:
                mostrar_tiempo_total(total)
            5:
                Escribir "saliendo del programa..."
            De Otro Modo:
                Escribir "opcion invalida vuelve a intentarlo"
        FinSegun
    Hasta Que option = 5
	
FinAlgoritmo
