Algoritmo TP4_EJ2
	//Desarrollar un algoritmo que llene un arreglo con 20 números de forma
	//aleatoria entre 0 y 100 . Luego busque en el arreglo, un número generado
	//de forma aleatoria entre 0 y 100, y finalmente muestre: a)- El número a
	//buscar, b)- El arreglo, c)- Si encontró el número, la posición donde fue
	//hallado, o d)- Si no encontró el número.
	
	Definir tamanio_arreglo, numero_aleatorio,j, coincidencia Como Entero
	tamanio_arreglo=20
	j=0
	coincidencia=0
	Definir array_numeros Como Entero
	Dimension array_numeros[tamanio_arreglo]
	
	Para i<-0 Hasta 19 Con Paso 1 Hacer
		array_numeros[i]=Aleatorio(0,100)
		Escribir "Posicion " i+1 " -> " array_numeros[i]
	Fin Para	
	
	numero_aleatorio=Aleatorio(0,100)
	Escribir "El numero a buscar es -> " numero_aleatorio
	
	Para j<-0 Hasta 19 Con Paso 1 Hacer
		Si array_numeros[j]==numero_aleatorio Entonces
			Escribir "Bien!! Se encontro el numero en la posicion ->" j+1 
			coincidencia=coincidencia+1
		Fin Si
	Fin Para
	
	Si coincidencia==0 Entonces
		Escribir "Uhhhh.. no hubo coincidencias"
		Escribir "Suerte la proxima"
	Fin Si
FinAlgoritmo
