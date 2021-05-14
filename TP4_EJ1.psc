Algoritmo TP4_EJ1
	Dimension array_pares[100];
	Definir cont como entero;
	cont = 0;
	Para i<-1 Hasta 200 Con Paso 1 Hacer
		si(i%2 = 0)Entonces
			cont=cont+1;
			array_pares[cont] <- i;
			Escribir cont,") ", array_pares[cont];
		FinSi
	Fin Para
FinAlgoritmo
