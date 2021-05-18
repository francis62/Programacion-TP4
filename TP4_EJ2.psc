Algoritmo TP4_EJ2
	//VARIABLES
	Definir tamanio_arreglo, numero_aleatorio,j, coincidencia Como Entero
	tamanio_arreglo=20
	j=0
	coincidencia=0
	Definir array_numeros Como Entero
	Dimension array_numeros[tamanio_arreglo]
	
	//GUARDAMOS VALORES EN EL ARREGLO
	Para i<-0 Hasta 19 Con Paso 1 Hacer
		array_numeros[i]=Aleatorio(0,100)
		Escribir "Posicion " i+1 " -> " array_numeros[i]
	Fin Para	
	
	//GUARDAMOS EL VALOR DEL NUMERO ALEATORIO A ENCONTRAR DENTRO DEL ARREGLO
	numero_aleatorio=Aleatorio(0,100)
	Escribir "El numero a buscar es -> " numero_aleatorio
	
	//RECORREMOS EL ARREGLO PARA VERIFICAR QUE EL NUMERO SE ENCUENTRE DENTRO DEL MISMO
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
