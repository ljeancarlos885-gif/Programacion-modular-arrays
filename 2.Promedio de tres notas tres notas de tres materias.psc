  //**primera materia
Funcion ingresar_notas_materia_1(lista Por Referencia)
	
	definir i  Como real
	Para  i <-  1 Hasta 3 Con Paso 1 Hacer
		Escribir " ingresa las notas de la materia ",i,":"
		Leer lista[i] 
	FinPara
FinFuncion

Funcion suma <- sumar_notas(lista)
	definir suma Como Real
	suma <- 0
	Para  i <-  1 Hasta 3 Con Paso 1 Hacer
		suma <- suma + lista[i] 
	FinPara	
FinFuncion

Funcion promedio <- calcular_Promedio_materia_1(suma)
	promedio <- suma / 3
FinFuncion
// segunda materia
Funcion ingresar_notas_materia_2(lista Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir Sin Saltar "Ingrese la nota ", i, " de la Materia 2: "
        Leer lista[i]
    FinPara
FinFuncion

Funcion suma <- sumar_notas_2(lista)
    Definir suma Como Real
    suma <- 0
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        suma <- suma + lista[i]
    FinPara
FinFuncion

Funcion promedio <- calcular_Promedio_materia_2(suma)
    promedio <- suma / 3
FinFuncion
//tercera materia
Funcion ingresar_notas_materia_3(lista Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir Sin Saltar "Ingrese la nota ", i, " de la Materia 3: "
        Leer lista[i]
    FinPara
FinFuncion

Funcion suma <- sumar_notas_3(lista)
    Definir suma Como Real
    suma <- 0
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        suma <- suma + lista[i]
    FinPara
FinFuncion

Funcion promedio <- calcular_Promedio_materia_3(suma)
    promedio <- suma / 3
FinFuncion
Funcion mostrar_promedio_y_final(promedio_m1, promedio_m2, promedio_m3)
	Escribir "El promedio de la Materia 1 es: ", promedio_m1
	Escribir "El promedio de la Materia 2 es: ", promedio_m2
	Escribir "El promedio de la Materia 3 es: ", promedio_m3
	
	Definir promedio_general Como Real
	promedio_general <- (promedio_m1 + promedio_m2 + promedio_m3) / 3
	Escribir ""
	Escribir "El promedio general de las 3 materias es: ", promedio_general
FinFuncion

Algoritmo Promedio_de_tres_notas_tres_materias
	
	Definir notas_materia_1, notas_materia_2, notas_materia_3 Como Real
		Dimensionar notas_materia_1[3], notas_materia_2[3], notas_materia_3[3]
		Definir option Como Entero 
		Definir promedio_m1, promedio_m2, promedio_m3 Como Real
		
		Repetir
			Escribir "|======== menu Interactivo =========|"
			Escribir "1. Ingresar notas de la materia 1"
			Escribir "2. Ingresar notas de la materia 2"
			Escribir "3. Ingresar notas de la materia 3"
			Escribir "4. Calcular y mostrar promedio total"
			Escribir "5. Salir"
			Escribir  "Elija una opcion: "
			Leer option
			
			Segun option Hacer 
				1:
					Escribir ""
					Escribir "|=== ingresa las notas para la materia 1 ===|"
					ingresar_notas_materia_1(notas_materia_1)
				2:
					Escribir ""
					Escribir "|=== ingresa las notas para la materia 2 ===|"
					ingresar_notas_materia_2(notas_materia_2)
				3:
					Escribir ""
					Escribir "|=== ingresa las notas para la materia 3 ===|"
					ingresar_notas_materia_3(notas_materia_3)
				4:
					Escribir ""
					Si notas_materia_1[1] <> 0 Y notas_materia_2[1] <> 0 Y notas_materia_3[1] <> 0 Entonces
						Definir suma_m1, suma_m2, suma_m3 Como Real
						suma_m1 <- sumar_notas(notas_materia_1)
						suma_m2 <- sumar_notas_2(notas_materia_2)
						suma_m3 <- sumar_notas_3(notas_materia_3)
						
						promedio_m1 <- calcular_Promedio_materia_1(suma_m1)
						promedio_m2 <- calcular_Promedio_materia_2(suma_m2)
						promedio_m3 <- calcular_Promedio_materia_3(suma_m3)
						
						mostrar_promedio_y_final(promedio_m1, promedio_m2, promedio_m3)
					SiNo
						Escribir "Primero debe ingresar las notas de las tres materias (opciones 1, 2 y 3)."
					FinSi
				5:
					Escribir ""
					Escribir "Saliendo del programa..."
				De Otro Modo:
					Escribir "Opción no válida, intente de nuevo."
			FinSegun
			Escribir ""
		Hasta Que option = 5 
FinAlgoritmo