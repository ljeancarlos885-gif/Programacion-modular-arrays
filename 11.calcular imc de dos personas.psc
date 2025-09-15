Funcion calcular_imc(pesos Por Referencia, alturas Por Referencia, imc Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 2 Hacer
        imc[i] <- pesos[i] / (alturas[i] * alturas[i])
    FinPara
FinFuncion

Funcion mostrar_imc(imc Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 2 Hacer
        Escribir "el imc de la persona ", i, " es: ", imc[i]
    FinPara
FinFuncion

Funcion ingresar_pesos(pesos Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 2 Hacer
        Escribir "Ingrese el peso (kg) de la persona ", i, ":"
        Leer pesos[i]
    FinPara
FinFuncion

Funcion ingresar_alturas(alturas Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 2 Hacer
        Escribir "Ingrese la altura (m) de la persona ", i, ":"
        Leer alturas[i]
    FinPara
FinFuncion

Algoritmo calcular_imc_de_dos_personas
    
	Dimensionar pesos[2], alturas[2], imc[2]
	Definir option Como Entero
	
    Repetir
        Escribir ""
        Escribir "1. ingresar pesos"
        Escribir "2. ingresar alturas"
        Escribir "3. calcular imc"
        Escribir "4. mostrar imc"
        Escribir "5. Salir"
        Escribir "elige una opción:"
        Leer opcion
		
        Segun  option Hacer
            1:
                ingresar_pesos(pesos)
            2:
                ingresar_alturas(alturas)
            3:
                calcular_imc(pesos, alturas, imc)
            4:
                mostrar_imc(imc)
            5:
                Escribir "saliendo del programa..."
            De Otro Modo:
                Escribir "opcion invalida vuelve a intentarlo"
        FinSegun
    Hasta Que  option = 5
	
FinAlgoritmo

