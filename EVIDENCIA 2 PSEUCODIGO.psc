Algoritmo TIENDA_COSMETICOS
		Definir cantidad, precio, montototal, continuar, contador, contador2, mediador Como Entero
		Definir ciclo, ciclo2 Como Logico
		Definir descripcion, cantidadc, precioc, basededatos, fecha, fecha2 Como Caracter
		Dimension basededatos[10000]//Hasta n cantidad
		ciclo <- Verdadero
		ciclo2 <- Verdadero
		contador <- 0
		contador2 <- 0
		fecha <- 'fecha de la venta'
		Mientras ciclo = Verdadero Hacer
			Escribir '1- Registrar una venta'
			Escribir '2-Consultar una venta del dia especifico'
			Escribir '3-salir'
			Leer mediador
			Si mediador = 1 Entonces
				Mientras ciclo2 = Verdadero Hacer
					Escribir '	    Menu de Articulos 	  '
					Escribir '-DESCRIPCION-		  |Precio|'
					Escribir 'SOMBRAS                 | $400|'
					Escribir 'LABIAL MATE             |$100|'
					Escribir 'RIMEN                   | $50|'
					Escribir 'BASE LIQUIDA            | $200|'
					Escribir 'ILUMINADOR              | $180|'
					Escribir 'PRIMER                  | $250|'
					Escribir 'RUBOR                   | $80|'
					basededatos[contador] <- fecha
					contador <- contador + 1
					Escribir 'Dime la descripcion del articulo'
					Leer descripcion
					basededatos[contador] <- descripcion
					contador <- contador + 1
					Escribir 'Dime cuantas cantidades se vendieron'
					Leer cantidad
					cantidadc <- ConvertirATexto(cantidad)
					basededatos[contador] <- cantidadc
					contador <- contador + 1
					Escribir 'Dime cual es el valor del producto'
					Leer precio
					precioc <- ConvertirATexto(precio)
					basededatos[contador] <- precioc
					contador <- contador + 1
					montototal <- cantidad * precio
					Escribir 'La cantidad total a pagar del cleinte es $' montototal
					Escribir 'Desea seguir metiendo ventas: inserte 0 para seguir realizando ventas sino cualquier numero'
					Leer continuar 
					Si continuar = 0 Entonces
						ciclo2 <- Falso
					SiNo
						Escribir ' '
					Fin Si
				FinMientras
			FinSi
			Si mediador = 2 Entonces
				Escribir 'Diga la fecha que quiera consultar'
				Leer fecha2
				Mientras contador2 < contador Hacer
					Escribir Basededatos[contador2]
					contador2 <- contador2 + 1
				Fin Mientras
			Fin Si
			Si mediador = 3 Entonces
				ciclo <- Falso
			Fin Si
			Si mediador <> 1 Y mediador <> 2 Y mediador <> 3 Entonces
				Escribir 'El numero que selecciono no es valida por favor intente seleccionar una valida'
			Fin Si
		FinMientras
FinAlgoritmo
