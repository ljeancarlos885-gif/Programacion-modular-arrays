Funcion ingresar_distancias(distancia Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 2 Con Paso 1 Hacer
        Escribir "Ingrese la distancia recorrida (km) por el carro ", i, ":"
        Leer distancia[i]
    FinPara
FinFuncion

Funcion ingresar_tiempos(tiempo Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 2 Con Paso 1 Hacer
        Escribir "Ingrese el tiempo (horas) tomado por el carro ", i, ":"
        Leer tiempo[i]
    FinPara
FinFuncion

Funcion calcular_velocidades(distancia Por Referencia, tiempo Por Referencia, velocidad Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 2 Con Paso 1 Hacer
        Si tiempo[i] <> 0 Entonces
            velocidad[i] <- distancia[i] / tiempo[i]
        SiNo
            velocidad[i] <- 0
            Escribir " Tiempo no puede ser cero para el carro ", i
        FinSi
    FinPara
FinFuncion

Funcion mostrar_velocidades(velocidad Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 2 Con Paso 1 Hacer
        Escribir "La velocidad promedio del carro ", i, " es: ", velocidad[i], " km/h"
    FinPara
FinFuncion

Algoritmo calcular_velocidad_promedio_dos_carros
	
    Dimensionar distancia[2], tiempo[2], velocidad[2]
    Definir option  Como Entero
	
    Repetir
        Escribir ""
        Escribir "1. ingresar distancias"
        Escribir "2. ingresar tiempos"
        Escribir "3. calcular velocidades promedio"
        Escribir "4. mostrar velocidades"
        Escribir "5. salir"
        Escribir "elige una opción:"
        Leer option 
		
        Segun option  Hacer
            1:
                ingresar_distancias(distancia)
            2:
                ingresar_tiempos(tiempo)
            3:
                calcular_velocidades(distancia, tiempo, velocidad)
            4:
                mostrar_velocidades(velocidad)
            5:
                Escribir "saliendo del programa..."
            De Otro Modo:
                Escribir "opcion invalida vuelve a intentarlo"
        FinSegun
    Hasta Que option = 5
	
FinAlgoritmo
