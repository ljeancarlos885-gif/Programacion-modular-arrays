Funcion ingresar_fechas_nacimiento(nacimientos Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 3 Hacer
        Escribir "Ingrese el año de nacimiento de la persona ", i, ":"
        Leer nacimientos[i]
    FinPara
FinFuncion

Funcion ingresar_fecha_actual(fecha_actual Por Referencia)
    Escribir "Ingrese el año actual:"
    Leer fechaActual
FinFuncion

Funcion calcular_edades(nacimientos Por Referencia, fecha_actual , edades Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 3 Hacer
        edades[i] <- fechaActual - nacimientos[i]
    FinPara
FinFuncion

Funcion mostrar_edades(edades Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 3 Hacer
        Escribir "La edad de la persona ", i, " es: ", edades[i], " años"
    FinPara
FinFuncion

Algoritmo calcular_edades_de_tres_personas
    Dimension nacimientos[3]
    Dimension edades[3]
    Definir fechaActual Como Entero
    Definir opcion Como Entero
	
    fechaActual <- 0  // Inicializamos en 0
	
    Repetir
        Escribir ""
        Escribir "1. Ingresar años de nacimiento"
        Escribir "2. Ingresar año actual"
        Escribir "3. Calcular edades"
        Escribir "4. Mostrar edades"
        Escribir "5. Salir"
        Escribir "Elige una opción:"
        Leer opcion
		
        Segun opcion Hacer
            1:
                ingresar_fechas_nacimiento(nacimientos)
            2:
                ingresar_fecha_actual(fechaActual)
            3:
                calcular_edades(nacimientos, fechaActual, edades)
            4:
                mostrar_edades(edades)
            5:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opción inválida. Intente de nuevo."
        FinSegun
    Hasta Que opcion = 5
	
FinAlgoritmo
