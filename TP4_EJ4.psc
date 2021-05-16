Algoritmo TP4_EJ4
	Definir contrasenia, cadena_num0,cadena_num1,cadena_num2,cadena_num3,cadena_num4,cadena_num5,cadena_num6,cadena_num7 Como Caracter
	Definir contrasenia0, contrasenia1,contrasenia2,contrasenia3 Como Caracter
	Definir mitad_contrasenia0,mitad_contrasenia1 Como Caracter
	Definir i Como Entero
	Definir array_contrasenia Como Entero
	Dimension array_contrasenia[8]
	
	Escribir "Bienvenido al programa generador de contraseñas para mayor seguridad"
	Escribir "--"
	Para i<-0 Hasta 7 Con Paso 1 Hacer
		array_contrasenia[i]=Aleatorio(0,9)
		Escribir array_contrasenia[i]
	Fin Para
	Escribir "--"

	Para r<-0 Hasta 7 Con Paso 1 Hacer	
		Segun r Hacer
			0:
				cadena_num0<-ConvertirATexto(array_contrasenia[r])
			1:
				cadena_num1<-ConvertirATexto(array_contrasenia[r])
			2:
				cadena_num2<-ConvertirATexto(array_contrasenia[r])
			3:
				cadena_num3<-ConvertirATexto(array_contrasenia[r])
			4:
				cadena_num4<-ConvertirATexto(array_contrasenia[r])
			5:
				cadena_num5<-ConvertirATexto(array_contrasenia[r])
			6:
				cadena_num6<-ConvertirATexto(array_contrasenia[r])
			7:
				cadena_num7<-ConvertirATexto(array_contrasenia[r])
		Fin Segun
		
	Fin Para
	
	contrasenia0<-Concatenar(cadena_num0,cadena_num1)
	contrasenia1<-Concatenar(cadena_num2,cadena_num3)
	contrasenia2<-Concatenar(cadena_num4,cadena_num5)
	contrasenia3<-Concatenar(cadena_num6,cadena_num7)
	
	mitad_contrasenia0<-Concatenar(contrasenia0,contrasenia1)
	mitad_contrasenia1<-Concatenar(contrasenia2,contrasenia3)
	
	contrasenia<-Concatenar(mitad_contrasenia0,mitad_contrasenia1)
	
	Escribir "La contraseña es :" contrasenia
	
FinAlgoritmo
