Algoritmo TP4_EJ5
	//VARIABLES
	Definir posicion,i ,j Como Entero
	Definir auxiliar_1, auxiliar_2, auxiliar_i, auxiliar_j Como Entero
	Definir turno_jugador1,terminado,ganador Como Logico
	Dimension tateti_1[3,3]
	Dimension tateti_2[3,3]
	
	//ASIGNAMOS LOS VALORES DE LOS ARRAYS PARA EL TATETI
	Para i<-1 Hasta 3 Hacer
		Para j<-1 Hasta 3 Hacer
			tateti_1[i,j]<-0
			tateti_2[i,j]<-" "
		FinPara
	FinPara
	turno_jugador1<-Verdadero
	terminado<-Falso
	ganador<-Falso
	cantidad_turnos<-0
    
	//ACA GENERAMOS EL JUEGO DE TATETI
    Mientras (terminado) hacer
		Borrar Pantalla
			Escribir "____________________"
			Escribir "  | ",tateti_2[1,1],"  |  ",tateti_2[1,2],"  |  ",tateti_2[1,3]," | ";
			Escribir "--------------------"
			Escribir "  | ",tateti_2[2,1],"  |  ",tateti_2[2,2],"  |  ",tateti_2[2,3]," | ";
			Escribir "--------------------";
			Escribir "  | ",tateti_2[3,1],"  |  ",tateti_2[3,2],"  |  ",tateti_2[3,3]," | ";
			Escribir "____________________"
        Si (cantidad_turnos<9 y ganador) Entonces
            
            Si turno_jugador1 Entonces
                ficha<-'X';
			  objetivo<-1;
			  Valor<- 1;
                Escribir "Turno del jugador 1 (X)";
            Sino
                ficha<-'0'; 
			  objetivo<-8
			  Valor<- 2;
                Escribir "Turno del jugador 2 (O)";
            FinSi
            
            //ACA PEDIMOS QUE INGRESE UNA POSICION Y VALIDAMOS SI SE ENCUENTRA DISPONIBLE
            Escribir "Ingrese la Posición (1-9):"
            
            Repetir
                Leer posicion
                Si posicion<1 o posicion>9 Entonces
                    Escribir "Posición incorrecta, ingrese nuevamente: "
                    posicion<-99;
                Sino
                    i<-trunc((posicion-1)/3)+1
                    j<-((posicion-1) MOD 3)+1
                    Si tateti_1[i,j]<>0 Entonces
                        posicion<-99
                        Escribir "Posición incorrecta, ingrese nuevamente: "
                    FinSi
                FinSi
            Hasta Que posicion<>99
			
            //ACA GUARDAMOS LA FICHA EN LA MATRIZ tateti_2 Y EL VALOR EN LA MATRIZ tateti_1
            cantidad_turnos<-cantidad_turnos+1
            tateti_1[i,j]<-Valor
            tateti_2[i,j]<-ficha
            
            //ACA VERIFICAMOS SI ALGUIEN GANO, COMPARANDO EL PRODUCTO DE LAS FICHAS EN EL TABLERO SEA IGUAL A OBJETIVO
            auxiliar_1<-1; auxiliar_2<-1
            Para i<-1 hasta 3 hacer
                auxiliar_i<-1; auxiliar_j<-1
                auxiliar_1<-auxiliar_1*tateti_1[i,i]
                auxiliar_2<-auxiliar_2*tateti_1[i,4-i]
                Para j<-1 hasta 3 hacer
                    auxiliar_i<-auxiliar_i*tateti_1[i,j]
                    auxiliar_j<-auxiliar_j*tateti_1[j,i]
                FinPara
                Si auxiliar_i=objetivo o auxiliar_j=objetivo Entonces
                    ganador<-Verdadero
                FinSi
            FinPara
            Si auxiliar_1=objetivo o auxiliar_2=objetivo Entonces
                ganador<-Verdadero
            Sino
                turno_jugador_1 <- ~ turno_jugador_1
            FinSi
            
        Sino
            
            Si ganador Entonces
                Escribir "El ganador es... "
                Si turno_jugador_1 Entonces
                    Escribir "El jugador 1!"
                Sino
                    Escribir "El jugador 2!"
                FinSi
            Sino
                Escribir "Empate!"
            FinSi
            terminado<-Verdadero
            
        FinSi
        
    FinMientras
	
FinAlgoritmo
