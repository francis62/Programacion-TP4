Algoritmo TP4_EJ1
	//VARIABLES
	Definir i, r Como Entero
	Definir tamanio_array,indice Como Entero
	tamanio_array=100 
	indice=0
	Dimension array_numeros_pares[tamanio_array]
	
	//GUARDAMOS LOS NUMEROS PARES EN EL ARREGLO 
	Para i<-1 Hasta 200 Con Paso 1 Hacer
		Si i%2=0 Entonces
			array_numeros_pares[indice]=i
			indice=indice+1
		FinSi
	Fin Para
	
	//RECORREMOS EL ARREGLO PARA MOSTRAR LOS NUMEROS PARES
	Para r<-0 Hasta 99 Con Paso 1 Hacer
		Escribir r+1 " -> " array_numeros_pares[r]
	Fin Para
	
FinAlgoritmo