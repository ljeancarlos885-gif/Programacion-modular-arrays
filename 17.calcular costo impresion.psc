Funcion ingresar_datos(paginas Por Referencia, precio Por Referencia)
    Escribir "ingrese la cantidad de páginas a imprimir:"
    Leer paginas
    Escribir "ingrese el precio por página:"
    Leer precio
FinFuncion

Funcion calcular_costo_total(paginas Por Valor, precio Por Valor, total Por Referencia)
    total <- paginas * precio
FinFuncion

Funcion mostrar_datos(paginas Por Valor, precio Por Valor)
    Escribir "cantidad de páginas: ", paginas
    Escribir "precio por página: $", precio
FinFuncion

Funcion mostrar_total(total Por Valor)
    Escribir "costo total de impresión: $", total
FinFuncion

Algoritmo calcular_costo_impresion
	
    Definir paginas Como Entero
    Definir precio, total Como Real
    Definir opcion Como Entero
	
    Repetir
        Escribir ""
        Escribir "===== menu impresion ====="
        Escribir "1. ingresar datos de impresión"
        Escribir "2. calcular costo total"
        Escribir "3. mostrar datos ingresados"
        Escribir "4. mostrar costo total"
        Escribir "5. salir"
        Escribir "seleccione una opción:"
        Leer opcion
		
        Segun opcion Hacer
            1:
                ingresar_datos(paginas, precio)
            2:
                calcular_costo_total(paginas, precio, total)
            3:
                mostrar_datos(paginas, precio)
            4:
                mostrar_total(total)
            5:
                Escribir "saliendo del programa..."
            De Otro Modo:
                Escribir "opcion invalida vuelve a intentarlo ."
        FinSegun
    Hasta Que opcion = 5
	
FinAlgoritmo
