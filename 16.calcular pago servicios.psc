Funcion ingresar_consumos(servicios Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "ingrese el monto a pagar por el servicio ", i, ":"
        Leer servicios[i]
    FinPara
FinFuncion

Funcion calcular_total(servicios Por Referencia, total Por Referencia)
    Definir i Como Entero
    total <- 0
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        total <- total + servicios[i]
    FinPara
FinFuncion

Funcion mostrar_consumos(servicios Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "monto del servicio ", i, ": $", servicios[i]
    FinPara
FinFuncion

Funcion mostrar_total(total Por Valor)
    Escribir "total a pagar por los servicios: $", total
FinFuncion

Algoritmo calcular_pago_servicios
	
    Dimensionar servicios[4] 
    Definir total Como Real
    Definir opcion Como Entero
	
    Repetir
        Escribir ""
        Escribir "===== menu de servicios ====="
        Escribir "1. ingresar consumos de servicios"
        Escribir "2. calcular total a pagar"
        Escribir "3. mostrar consumos ingresados"
        Escribir "4. mostrar total a pagar"
        Escribir "5. salir"
        Escribir "seleccione una opción:"
        Leer opcion
		
        Segun opcion Hacer
            1:
                ingresar_consumos(servicios)
            2:
                calcular_total(servicios, total)
            3:
                mostrar_consumos(servicios)
            4:
                mostrar_total(total)
            5:
                Escribir "saliendo del programa..."
            De Otro Modo:
                Escribir "opcion invalida. Intente nuevamente."
        FinSegun
    Hasta Que opcion = 5
	
FinAlgoritmo

