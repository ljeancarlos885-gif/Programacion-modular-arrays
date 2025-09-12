Funcion subtotal_calculado <- calcular_subtotal(precio,cantidad,num_producto)
    Definir subtotal_calculado Como Real
    subtotal_calculado <- 0
    Para i<- 1 Hasta num_producto Con Paso 1 Hacer
        subtotal_calculado <- subtotal_calculado + (precio[i] * cantidad[i])
    Fin Para
FinFuncion

Funcion precio_final_calculado <- calcular_precio_final(subtotal,descuento)
    Definir monto_descuento, precio_final_calculado Como Real
    
    monto_descuento <- subtotal * descuento
    
	precio_final_calculado <- subtotal - monto_descuento
FinFuncion

Algoritmo compra_total_iva
  
    Definir num_productos Como Entero
    Definir precio, cantidad Como Real
    Definir subtotal, descuento, precio_final Como Real
    
    Escribir "cuantos productos vas a comprar?"
    Leer num_productos
    
    Dimensionar precio[num_productos]
    Dimensionar cantidad[num_productos]
    
    Para i<- 1 Hasta num_productos Con Paso 1 Hacer
        Escribir " producto ",i, "..."
        Escribir "ingresa el precio unitario"
        Leer precio[i]
        Escribir "ingresa la cantidad de productos de este tipo"
        Leer cantidad[i]
    Fin Para
    
    subtotal <- calcular_subtotal(precio,cantidad,num_productos)
    
    Escribir "ingresa el porcentaje de descuento"
    Leer descuento
    
    precio_final <- calcular_precio_final(subtotal,descuento)
    
    Escribir "== resumen de la compra =="
    Escribir "Subtotal (sin descuento): ", subtotal, " pesos"
    Escribir "monto del descuento: ", subtotal - precio_final, " pesos"
    Escribir "Precio final a pagar: ", precio_final, " pesos"
    Escribir " ¡Gracias por tu compra buelve pronto! "
	
FinAlgoritmo