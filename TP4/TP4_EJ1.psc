Algoritmo TP4_EJ1
	//Desarrollar un algoritmo que permita almacenar en un arreglo los cien
	//primeros números pares.
	//Luego recorrer el arreglo y mostrar los números que contiene el arreglo.
	
	//Ejemplo de array en pseudocodigo: 
	//Definir num como entero;
	//Dimension num[5];
	//num[1]=5;
	//num[2]=10;
	//num[3]=15;
	//num[4]=20;
	//num[5]=25;	
	
	Definir array_numero, numero_par,r,tamanio Como Entero
	tamanio=100
	Dimension array_numero[tamanio]
	
	//Almacenamos variables en el array
	Para i<-1 Hasta 200 Con Paso 1 Hacer
		Si i%2=0 Entonces
			n=array_numero[i-1]				
		FinSi
	Fin Para
	
	
	//Recorremos el array de los primeros 100 numeros pares
	Para r<-0 Hasta 99 Con Paso 1 Hacer 
		Escribir "Los primeros cien numeros pares son:"
		Escribir array_numero[r]
	Fin Para
	
FinAlgoritmo