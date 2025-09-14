Funcion ingresar_bases(bases Por Referencia)
	Para i <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "Ingrese la base del rectángulo ", i, ":"
		Leer bases[i]
	Fin Para
FinFuncion

Funcion ingresar_alturas(alturas Por Referencia)
	Para i <- 1 Hasta 3 Con Paso 1 Hacer
	Escribir "Ingrese la altura del rectángulo ", i, ":"
	Leer alturas[i]
Fin Para
FinFuncion

Funcion calcular_areas(bases, alturas, areas Por Referencia)
	Para i <- 1 Hasta 3 Con Paso 1 Hacer
		areas[i] <- bases[i] * alturas[i]
	Fin Para
FinFuncion

Funcion  mostrar_areas(areas)
	Escribir "=== areas calculadas ==="
	Para i <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "Rectángulo ", i, ": ", areas[i]
	Fin Para
FinFuncion


Algoritmo calcular_areas_rectangulos
	Definir bases, alturas, areas Como Real
	Dimension bases[3], alturas[3], areas[3]
	Definir opcion Como Caracter
	
	Para i <- 1 Hasta 3 Con Paso 1 Hacer
		bases[i] <- 0
		alturas[i] <- 0
		areas[i] <- 0
	Fin Para
	

	Repetir
		Escribir ""
		Escribir "===== menu areas de rectangulos ====="
		Escribir "1. ingresar bases"
		Escribir "2. ingresar alturas"
		Escribir "3. calcular áreas"
		Escribir "4. mostrar áreas"
		Escribir "5. salir"
		Escribir "seleccione una opción:"
		Leer opcion
		
		Segun opcion Hacer
			"1":
				ingresar_bases(bases)
			"2":
				ingresar_alturas(alturas)
			"3":
				calcular_areas(bases, alturas, areas)
				Escribir "Áreas calculadas correctamente."
			"4":
				si bases[1] <> 0 Entonces
					mostrar_areas(areas)
				SiNo
					Escribir "Primero debes ingresar los datos (opción 1)."
				FinSi
			"5":
				Escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "opción inválida. Intente de nuevo."
		Fin Segun
	Hasta Que opcion = "5"
FinAlgoritmo
