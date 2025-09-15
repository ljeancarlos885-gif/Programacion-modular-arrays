Funcion ingresar_unidades(unidades Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "Ingrese las unidades vendidas del producto ", i, ":"
        Leer unidades[i]
    FinPara
FinFuncion

Funcion ingresar_precios(precios Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "Ingrese el precio por unidad del producto ", i, ":"
        Leer precios[i]
    FinPara
FinFuncion

Funcion calcular_totales(unidades Por Referencia, precios Por Referencia, totales Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        totales[i] <- unidades[i] * precios[i]
    FinPara
FinFuncion

Funcion calcular_total_general(totales Por Referencia, total_general Por Referencia)
    Definir i Como Entero
    total_general <- 0
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        total_general <- total_general + totales[i]
    FinPara
FinFuncion

Funcion mostrar_totales(totales Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "Total a pagar por el producto ", i, ": $", totales[i]
    FinPara
FinFuncion

Funcion mostrar_total_general(total_general Por Valor)
    Escribir "Total a pagar por todos los productos: $", total_general
FinFuncion

Algoritmo calcular_total_ventas_productos
	
    Dimensionar unidades[3], precios[3], totales[3]
    Definir total_general Como Real
    Definir option Como Entero
	
    Repetir
        Escribir ""
        Escribir "1. ingresar unidades vendidas"
        Escribir "2. ingresar precios por unidad"
        Escribir "3. calcular totales por producto"
        Escribir "4. calcular total general"
        Escribir "5. mostrar totales por producto"
        Escribir "6. mostrar total general"
        Escribir "7. salir"
        Escribir "elige una opción:"
        Leer option
		
        Segun option Hacer
            1:
                ingresar_unidades(unidades)
            2:
                ingresar_precios(precios)
            3:
                calcular_totales(unidades, precios, totales)
            4:
                calcular_total_general(totales, total_general)
            5:
                mostrar_totales(totales)
            6:
                mostrar_total_general(total_general)
            7:
                Escribir "saliendo del programa..."
            De Otro Modo:
                Escribir "opcion invalida vuelve a intentarlo"
        FinSegun
    Hasta Que option = 7
	
FinAlgoritmo
