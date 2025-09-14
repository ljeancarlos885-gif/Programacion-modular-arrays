Funcion ingresar_precio_compra(compra por referencia)
	definir i como entero
	Para i <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "ingrese el precio de este producto ", i ,":"
		Leer compra[i]
	Fin Para
FinFuncion

Funcion ingresa_porcentaje_descuento(descuento por referencia)
	definir i como entero
	Para  i <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "ingrese el porcentaje de descuento de este producto " ,i ,":"  "(ej 10%=0.10)"
		Leer descuento[i]	
	Fin Para
FinFuncion

Funcion calcular_porcentajes_descuento( compra, descuento, porcentaje Por Referencia)
	definir i como entero
	Para i <- 1 Hasta 3 Con Paso 1 Hacer
	porcentaje[i] <- compra[i] * descuento[i]
	Fin Para
FinFuncion

Funcion  calcular_precio_final(precio_final, compra, porcentaje Por Referencia )
	definir i como entero
	Para i <- 1 Hasta 3 Con Paso 1 Hacer
		precio_final[i] <- compra[i] - porcentaje[i]
	Fin Para
	
FinFuncion

Funcion mostrar_resultados (compra, descuento,porcentaje, precio_final)
	Definir i como entero
	Definir total_compra, total_descuento, total_final Como Real
	total_compra <- 0
	total_descuento <- 0
	total_final <- 0
	
	Escribir ""
	Escribir " ||||| resumen de compra ||||| "
	Para i <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "producto ", i, ":"
		Escribir "precio original      : $ ",compra[i]
		Escribir "descuento aplicado   :   ",descuento[i] * 100, "%"
		Escribir "monto de descuento   : $ ",porcentaje[i]    
		Escribir "precio con descuento : $ ",precio_final[i] 
		Escribir ""
		
		total_compra <- total_compra + compra[i]
		total_descuento <- total_descuento + porcentaje[i]
		total_final <- total_final + precio_final[i]
	Fin Para
	
	Escribir " ///// total ///// "
	Escribir "total antes de descuento : $",total_compra
	Escribir "total de descuentos      : $",total_descuento
	Escribir "total a pagar            : $",total_final
	Escribir " /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\ "
FinFuncion

Algoritmo descuento_aplicado_a_una_compra
	definir i Como Entero
	definir compra,descuento,porcentaje,precio_final Como Real
	Dimension compra[3],descuento[3],porcentaje[3],precio_final[3]
	definir option Como caracter

	
Repetir
	escribir "=== Descuento aplicado a una compra ==="
	escribir "*** descuento aplicado a una compra ***"
	escribir "1. ingrese el precio de la compra"
	escribir "2. ingrese el porcentaje de descueto"
	escribir "3. calcular descuento de la compra"
	escribir "4. calcular precio final de la compra"
	escribir "5. mostrar resultados"
	escribir "6. salir"
	escribir " elije una opcion "
	Leer option
	Segun option Hacer
		"1":
			ingresar_precio_compra(compra)
		"2":
			ingresa_porcentaje_descuento(descuento)
		"3":
			calcular_porcentajes_descuento(compra, descuento,porcentaje)
		"4":
			calcular_precio_final(precio_final, compra, porcentaje)
		"5":	
			mostrar_resultados(compra, descuento,porcentaje, precio_final)
		"6":
			escribir "saliendo del programa..."
			
		De Otro Modo:
		   escribir "opcion incorrecta vuelve a intentarlo"
   Fin Segun
Hasta Que option = "6"
FinAlgoritmo
