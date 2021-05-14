Algoritmo TP4_EJ3
	
	Dimension array_primo[100];
	definir num Como Entero;
	definir num_div Como Entero;
	definir indice Como Entero;
	definir cont Como Entero;
	definir exit como logico;
	
	indice = 0;
	Para num<-1 Hasta 100 Con Paso 1 Hacer
		//Valores seteados para entrar de nuevo en el "mientras"
		cont = 0;
		num_div = 0;
		exit = Falso;
		//Bucle que identifica los numeros primos
		Mientras exit == Falso Hacer
			cont = cont+1;
			//Condición donde sabemos por cuantos números se puede dividir.
			si(num%cont == 0)Entonces
				num_div = num_div+1;
				//Condición que termina por encontrar el numero primo
				si(num==cont y num_div == 2)Entonces
					indice = indice+1;
					array_primo[indice]<-num;
					Escribir indice,") El primo es: ",array_primo[indice];
					exit = Verdadero;
				FinSi
			FinSi
			//Condición que determina cuando un numero no es primo
			si(num_div == 3 o num == 1)Entonces
				exit=Verdadero;
			FinSi
		Fin Mientras
	Fin Para
	
	
FinAlgoritmo
