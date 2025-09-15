Funcion ingresar_calorias(calorias Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 7 Con Paso 1 Hacer
        Escribir "Ingrese las calor�as consumidas en el d�a ", i, ":"
        Leer calorias[i]
    FinPara
FinFuncion

Funcion calcular_total_diario(calorias Por Referencia, total_diario Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 7 Con Paso 1 Hacer
        total_diario[i] <- calorias[i]
    FinPara
FinFuncion

Funcion calcular_total_semanal(calorias Por Referencia, total Por Referencia)
    Definir i Como Entero
    total <- 0
    Para i <- 1 Hasta 7 Con Paso 1 Hacer
        total <- total + calorias[i]
    FinPara
FinFuncion

Funcion mostrar_total_diario(total_diario Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 7 Con Paso 1 Hacer
        Escribir "Total de calor�as consumidas el d�a ", i, ": ", total_diario[i]
    FinPara
FinFuncion

Funcion mostrar_total_semanal(total Por Valor)
    Escribir "Total de calor�as consumidas en la semana: ", total
FinFuncion

Algoritmo calorias_consumidas_durante_semana
    Dimensionar calorias[7], total_diario[7]
    Definir total Como Real
    Definir option Como Entero
	
    Repetir
        Escribir ""
        Escribir "1. ingresar calor�as por d�a"
        Escribir "2. calcular total diario"
        Escribir "3. calcular total semanal"
        Escribir "4. mostrar total diario"
        Escribir "5. mostrar total semanal"
        Escribir "6. Salir"
        Escribir "elige una opci�n:"
        Leer option
		
        Segun option Hacer
            1:
                ingresar_calorias(calorias)
            2:
                calcular_total_diario(calorias, total_diario)
            3:
                calcular_total_semanal(calorias, total)
            4:
                mostrar_total_diario(total_diario)
            5:
                mostrar_total_semanal(total)
            6:
                Escribir "saliendo del programa..."
            De Otro Modo:
                Escribir "opcion invalida vuelve a intentarlo"
        FinSegun
    Hasta Que option = 6
	
FinAlgoritmo
