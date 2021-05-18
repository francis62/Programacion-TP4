Algoritmo TP4_EJ4
	//VARIABLES 
	Definir i,r Como Entero
	Definir tamanio_array Como Entero
	tamanio_array=8
	Definir array_contrasenia Como Entero
	Dimension array_contrasenia[tamanio_array]
	
	//ENTRADA
	Escribir "Bienvenido al programa generador de contraseñas para mayor seguridad"
	
	//GUARDAMOS VALORES EN EL ARREGLO
	Escribir "------------------"
	Para i<-0 Hasta tamanio_array-1 Con Paso 1 Hacer
		array_contrasenia[i]=Aleatorio(0,9)
		Escribir "Posicion " i+1 " -> " array_contrasenia[i]
	Fin Para
	Escribir "------------------"
	
	//RECORREMOS EL ARREGLO
	Para r<-0 Hasta tamanio_array-1 Con Paso 1 Hacer	
		Escribir "  " , Concatenar(ConvertirATexto(array_contrasenia[r]) ,"  ") Sin Saltar
	Fin Para
	
FinAlgoritmo
