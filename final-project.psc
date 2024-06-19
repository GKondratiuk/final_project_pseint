SubProceso Perder (jugador Por Referencia)
	Escribir "                        ,___,";
	Escribir "                        [O.o] ";
	Escribir "                        /)__) ";
	Escribir "                        -.--.-";
	escribir "    *:._.:*~*:._.:* Veo que has perdido *:._.:*~*:._.:*";
	escribir " *:._.:*~*: No puedes pasar, no eres Bienvenido aqui :*~*:._.:*";
	escribir "     *~*:._.:*~*:._.:*~*:. _ .:*~*:._.:*~*:._.:*~*:._.:*~*";	
FinSubProceso

SubProceso Ganar (jugador Por Referencia)
	Escribir "Has superado mi desaf?o. Te concedo el acceso al bosque.";
FinSubProceso

SubProceso jugar (juego Por Referencia)
	definir i,n,jugador, jugadas Como Entero;
	definir vector como caracter;
	Dimension vector[10];
	
	Escribir ".*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?* .??.*?*.??.*?*";
	Escribir "                        ,___,        *       ";
	Escribir "         Hola,          [O.o]       /|\      ";
	Escribir "         bienvenido a   /)__)      /_|_\     ";
	Escribir "         mi bosque      -.--.-      | |      ";
	Escribir " ";
	Escribir ".*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?* ";
	Escribir " "; 
	Escribir "SI QUIERES PASAR, DEBERAS GANARME EN UNA PARTIDA DE TA TE TI";
	Escribir " "; 
	Escribir ".*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?* ";
	
	para i <- 0 hasta 9 con paso 1 Hacer //RECORREMOS EL ARRAY COMPLETANDOLO CON ESPACIOS EN BLANCO PARA FORMAR NUESTRO TABLERO
		vector(i) <- " ";
	FinPara
	
	jugador <- azar(2) + 1; //DESIGNA DE MANERA ALEATORIA CUAL VA A SER EL PRIMER JUGADOR EN JUGAR, SE COLOCA UN 1 PARA QUE EL MISMO NO SEA 0
	jugadas <- 1;
	Escribir "                   Fichas:    (X)    (O)";
	Escribir "                  -----------------------";
	escribir "                  Juegas con la ficha (X) ";
	Escribir ".*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?* ";
	Escribir " ";
	Escribir "                   COMIENZA LA PARTIDA!!";
	
	mientras jugadas < 9 Hacer //SE COMPLETA CON 9 PORQUE ES EL MAXIMO DE JUGADAS POSIBLES
		
		Escribir " ";
		Escribir "               "," 7 | 8 | 9","          ",vector(7)," | ",vector(8)," | ",vector(9);
		Escribir "               ","---+---+---        ---+---+---";
		Escribir "               "," 4 | 5 | 6","          ",vector(4)," | ",vector(5)," | ",vector(6);
		Escribir "               ","---+---+---        ---+---+---";
		Escribir "               "," 1 | 2 | 3","          ",vector(1)," | ",vector(2)," | ",vector(3);
		escribir " ";
		
		si jugador = 2 Entonces	
			Repetir
				n<-azar(10);
				
			Hasta Que vector(n)=" ";
		SiNo
			Repetir
			
			Escribir ".*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?* ";
			Escribir Sin Saltar "             Te toca, ingrese una posicion:";
				leer n;
				Escribir ".*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?* ";
			Hasta Que n > 0 y n < 10 
		FinSi
		
		
		si n > 0 y n < 10 Entonces
			si jugador == 1 Entonces //SI LE TOCA AL JUGADOR 1, COMPLETAR? LOS ESPACIOS EN BLANCO CON UNA "X"
				si vector(n) ==" " entonces
					vector(n) <- "X";
					jugador <- 2;
					si vector(1) =="X" y vector(2) == "X" y vector(3) == "X" Entonces
						Ganar(jugador);
						jugadas <- 9;
					FinSi
					si  vector(4) =="X" y vector(5) == "X" y vector(6) == "X" Entonces
						Ganar(jugador);
						jugadas <- 9;
					FinSi
					si  vector(7) =="X" y vector(8) == "X" y vector(9) == "X" Entonces
						Ganar(jugador);
						jugadas <- 9;
					FinSi
					si  vector(1) =="X" y vector(4) == "X" y vector(7) == "X" Entonces
						Ganar(jugador);
						jugadas <- 9;
					FinSi
					si  vector(2) =="X" y vector(5) == "X" y vector(8) == "X" Entonces
						Ganar(jugador);
						jugadas <- 9;
					FinSi
					si  vector(9) =="X" y vector(6) == "X" y vector(3) == "X" Entonces
						Ganar(jugador);
						jugadas <- 9;
					FinSi
					si  vector(1) =="X" y vector(5) == "X" y vector(9) == "X" Entonces
						Ganar(jugador);
						jugadas <- 9;
					FinSi
					si  vector(7) =="X" y vector(5) == "X" y vector(3) == "X" Entonces
						Ganar(jugador);
						jugadas <- 9;
					FinSi
				SiNo
					Escribir "Parece que esa casilla est? ocupada. Por favor, elige otra para continuar el juego.";
				FinSi
			SiNo //SI NO LE TOCA AL JUGADOR 1, COMPLETAR? LOS ESPACIOS EN BLANCO CON UNA "O"
				si vector(n) == " " entonces
					vector(n) <- "O";
					jugador <- 1;
					si vector(1) =="O" y vector(2) == "O" y vector(3) == "O" Entonces
						perder(jugador);
						jugadas <- 9;
					FinSi
					si  vector(4) =="O" y vector(5) == "O" y vector(6) == "O" Entonces
						perder(jugador);
						jugadas <- 9;
					FinSi
					si  vector(7) =="O" y vector(8) == "O" y vector(9) == "O" Entonces
						perder(jugador);
						jugadas <- 9;
					FinSi
					si  vector(1) =="O" y vector(4) == "O" y vector(7) == "O" Entonces
						perder(jugador);
						jugadas <- 9;
					FinSi
					si  vector(2) =="O" y vector(5) == "O" y vector(8) == "O" Entonces
						perder(jugador);
						jugadas <- 9;
					FinSi
					si  vector(9) =="O" y vector(6) == "O" y vector(3) == "O" Entonces
						perder(jugador);
						jugadas <- 9;
					FinSi
					si  vector(1) =="O" y vector(5) == "O" y vector(9) == "O" Entonces
						perder(jugador);
						jugadas <- 9;
					FinSi
					si  vector(7) =="O" y vector(5) == "O" y vector(3) == "O" Entonces
						perder(jugador);
						jugadas <- 9;
					FinSi
				SiNo
					Escribir "Parece que esa casilla est? ocupada. Por favor, elige otra para continuar el juego.";
				FinSi
		    FinSi
		SiNo
			jugadas <- jugadas + 1;
			//Escribir "*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*";
			//Escribir "*?*.??.*?*.??.*?*  Parece que hemos llegado a un EMPATE *?*.??.*?*.??.*?*";
			//Escribir "*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*.??.*?*";
		FinSi
		
	FinMientras 
	
	escribir " ";
	Escribir " ";
	Escribir " 7 | 8 | 9","          ",vector(7)," | ",vector(8)," | ",vector(9);
	Escribir "---+---+---        ---+---+---";
	Escribir " 4 | 5 | 6","          ",vector(4)," | ",vector(5)," | ",vector(6);
	Escribir "---+---+---        ---+---+---";
	Escribir " 1 | 2 | 3","          ",vector(1)," | ",vector(2)," | ",vector(3);
	Escribir " ";
	escribir " ";
FinSubProceso

SubProceso busca_minas ( usuario Por Referencia )
	
	Dimension num[9,9];Dimension fan[9,9]; // Declaraci?n de las matrices para representar el tablero de juego 
	Definir num,fan,mina_pisada,num_minas_car como caracter;
	Definir salir,retirada como caracter;
	Definir num_minas,opcion_numero,op,fil,col,i,j,xe,ye,verificar,varX,varY,busX,busY,marX,marY,nivel,opc como Entero;
	retirada<-'';
	Repetir
		limpiar pantalla;
		Escribir "**************   BUSCA MINAS     ****************";	
		Escribir "**************   1. NUEVO JUEGO  ****************";
		Escribir "**************   2. SALIR        ****************";
		Leer opcion_numero;
		
		
		Segun opcion_numero Hacer
			1:
				Repetir
					limpiar pantalla;
					Escribir "**************  NIVEL    ";
					Escribir "**************  1. FACIL [5 minas]  ";
					Escribir "**************  2. INTERMEDIO [10 minas]    ";
					Escribir "**************  3. DIFICIL  [15 minas]  ";
					Leer opc;
					Segun opc Hacer
						1:
							nivel<-5;
						2:
							nivel<-10;
						3:
							nivel<-15;
						De Otro Modo:
							Escribir "Opcion no valida";
					FinSegun
				Hasta Que opc>=1 y opc<=3
				
				num_minas<-0;
				op<-1;
				para fil<-0 hasta 7 con paso 1 hacer
					Para col<-0 Hasta 7 Con Paso 1 Hacer
						num[fil,col]<-"-";
						fan[fil,col]<-"-";
					FinPara
				finpara
				
				//UBICACION DE MINAS AL AZAR
				Para i<-1 Hasta nivel Con Paso 1 Hacer
					xe <- azar(6)+1;
					ye <- azar(6)+1;
					si num[xe,ye]="-" entonces
						num[xe,ye]<-"X";
					Sino
						i<-i-1;
					finsi
				FinPara
				
				Repetir
					//VERIFICAR SI HAY MINAS
					verificar<-0;
					para fil<-1 hasta 7 con paso 1 hacer
						Para col<-1 Hasta 7 Con Paso 1 Hacer
							si fan[fil,col]="-" Entonces
								verificar<-1;
							FinSi
						FinPara
					finpara
					si verificar=0 entonces
						Escribir "_______________________________________________";
						Escribir "Felicidades has encontrado todas las minas!!";
						Escribir "GANASTE!!"; retirada<-"s";
						Esperar Tecla;
					FinSi
					
					LimpiarPantalla;
					Escribir "       1   2   3   4   5   6    ";
					
					Escribir 1,"    | ",fan[1,1]," | ",fan[1,2]," | ",fan[1,3]," | ",fan[1,4]," | ",fan[1,5]," | ",fan[1,6]," | ";
					Escribir 2,"    | ",fan[2,1]," | ",fan[2,2]," | ",fan[2,3]," | ",fan[2,4]," | ",fan[2,5]," | ",fan[2,6]," |      *Marcar Mina Presione [f10]";
					Escribir 3,"    | ",fan[3,1]," | ",fan[3,2]," | ",fan[3,3]," | ",fan[3,4]," | ",fan[3,5]," | ",fan[3,6]," |        Despues tecla [enter]";
					Escribir 4,"    | ",fan[4,1]," | ",fan[4,2]," | ",fan[4,3]," | ",fan[4,4]," | ",fan[4,5]," | ",fan[4,6]," |      *Retirada presione [f11]";
					Escribir 5,"    | ",fan[5,1]," | ",fan[5,2]," | ",fan[5,3]," | ",fan[5,4]," | ",fan[5,5]," | ",fan[5,6]," |        Despues tecla [enter]";
					Escribir 6,"    | ",fan[6,1]," | ",fan[6,2]," | ",fan[6,3]," | ",fan[6,4]," | ",fan[6,5]," | ",fan[6,6]," | ";
					
					
					
					Escribir "Coordenada en  X";
					Leer varX;
					Escribir "Coordenada en  Y";
					Leer varY;
					
					si varX>=1 y varY>=1 y varX<=7 y varY<=7 entonces
						mina_pisada<-num[varY,varX];
						
						si !mina_pisada="X" entonces
							
							Repetir					
								busX<-varX;
								busY<-varY;
								Segun op Hacer
									1:
										busX<-busX-1;
									2:
										busX<-busX-1;busY<-busY-1;
									3:
										busY<-busY-1;
									4:
										busX<-busX+1;busY<-busY-1;
									5:
										busX<-busX+1;
									6:
										busX<-busX+1;busY<-busY+1;
									7:
										busY<-busY+1;
									8:
										busX<-busX-1;busY<-busY+1;
									De Otro Modo:
										Escribir "Error: Terminando escaneo Minas";
								FinSegun
								op<-op+1;
								si num[busY,busX]='X' Entonces
									num_minas <- num_minas+1;
								FinSi
								
								
							Hasta Que op=9
							num_minas_car<-ConvertirATexto(num_minas);
							fan[varY,varX]<- num_minas_car;
							op<-1;num_minas<-0;
						Sino
							LimpiarPantalla;
							Escribir "       1   2   3   4   5   6   ";
							para j<-1 hasta 6 con paso 1 hacer
								Escribir j,"     | ",num[j,1]," | ",num[j,2]," | ",num[j,3]," | ",num[j,4]," | ",num[j,5]," | ",num[j,6]," | ";
							FinPara
							
							Escribir "*************************************";
							Escribir "HAS PISADO UNA MINA!!";
							Escribir "GAME OVER";
							Escribir "Perdedor";
							esperar tecla;
							retirada<-"s";
						FinSi
					Sino si varX=11 o varY=11 entonces
							Escribir "?Estas seguro que quieres retirarte del Juego?[S/N]";
							leer retirada;
						Sino si	varX=10 o varY=10 entonces
								Escribir "Digite cordenada X de mina que desea marcar";
								Leer marX;
								Escribir "Digite cordenada Y de mina que desea marcar";
								Leer marY;
								fan[marY,marX]<-"?";
							FinSi
							
						FinSi
						
					FinSi
					
				Hasta Que retirada='s' o retirada='S'
				retirada<-'';
			2:
				Escribir "Gracias por participa!!";
				
			De Otro Modo:
				Escribir "Entrada no valida";
		FinSegun
		
	Hasta Que opcion_numero=2
FinSubProceso

//Juego Lucas/Andy
SubProceso Trivia (General Por Referencia)
	Definir contador, puntaje como Entero;
    Definir respuesta,nom como Caracter;
    
    contador <- 0;
    puntaje <- 0;
    
    Escribir "Bienvenido al juego de preguntas de cultura general";
	Escribir "?Atencion! Recuerda que todas las preguntas no deben";
	Escribir "contener ni Mayusculas ni tildes";
	Escribir "";
    Escribir "Por favor, responde las siguientes preguntas:";
	Escribir "";
	Escribir "?Como te llamas?";
	leer nom;
    
    Escribir nom," ?Cu?l es la capital de Francia?"; Leer respuesta;
    Si respuesta = "paris" Entonces 
		puntaje <- puntaje + 1;
		contador <- contador + 1;
	finsi
	
	Escribir "2. ?En qu? continente se encuentra el desierto del Sahara?"; Leer respuesta;
	Si respuesta = "africa" Entonces 
		puntaje <- puntaje + 1;
		contador <- contador + 1;
	FinSi
	
	
	Escribir "3. ?Qui?n escribi? Don Quijote de la Mancha?";
	Leer respuesta;
	Si respuesta = "miguel de cervantes" Entonces 
		puntaje <- puntaje + 1;
		contador <- contador + 1;
	FinSi
	
	
	Escribir "4. ?Cu?l es el oc?ano m?s grande del mundo?"; Leer respuesta;
	Si respuesta = "oceano pacifico" Entonces 
		puntaje <- puntaje + 1;
		contador <- contador + 1;
	FinSi
	
	
	Escribir "5. ?Cu?l es el metal m?s abundante en la corteza terrestre?"; Leer respuesta;
	Si respuesta = "aluminio" Entonces 
		puntaje <- puntaje + 1;
		contador <- contador + 1;
	FinSi
	
	
	Escribir "6. ?Qui?n pint? la Mona Lisa?"; Leer respuesta;
	Si respuesta = "leonardo da vinci" Entonces 
		puntaje <- puntaje + 1;
		contador <- contador + 1;
	FinSi
	
	
	Escribir "7. ?Cu?l es el pa?s m?s poblado del mundo?"; Leer respuesta;
	Si respuesta = "china" Entonces 
		puntaje <- puntaje + 1;
		contador <- contador + 1;
	FinSi
	
	
	Escribir "8. ?Cu?l es la moneda oficial de Jap?n?"; Leer respuesta;
	Si respuesta = "yen" Entonces 
		puntaje <- puntaje + 1;
		contador <- contador + 1;
	FinSi
	
	Escribir "9. ?Qu? famosa estructura se encuentra en Atenas y fue construida en el siglo V a.C.?"; Leer respuesta;
	Si respuesta = "la acropolis" Entonces 
		puntaje <- puntaje + 1;
		contador <- contador + 1;
	FinSi
	
	
	Escribir "10. ?Qu? a?o marc? el fin de la Segunda Guerra Mundial?"; 
	Escribir "(CON NUMEROS)";
	Leer respuesta;
	Si respuesta = "1945" Entonces 
		puntaje <- puntaje + 1;
		contador <- contador + 1;
	FinSi
	
	
	Escribir "Has respondido ", puntaje, " preguntas correctamente de un total de 10";
FinSubProceso

//Juego JORGE/MATIAS/NICO
//Aqui adjuntamos El Proceso principal del juego de carreras-autos, con su menu, ciclos y estructuras.

SubProceso CarreraAutos(AutosCarreras por referencia)
	Definir opc, car, PuntosA, PuntosB como Entero;
	opc <- 0;	
	car <- 1;
	PuntosA <- 0;
	PuntosB <- 0;
	Mientras (opc <> 4) Hacer						
		Limpiar Pantalla;
		Escribir "";
		Escribir "                                                        ~~~~~ MENU PRINCIPAL DEL JUEGO ~~~~~";
		Escribir "                                                       |  [1] CANTIDAD DE CARRERAS         |";
		Escribir "                                                       |  [2] JUGAR                        |";
		Escribir "                                                       |  [3] VER PREMIOS                  |"; 			
		Escribir "                                                       |  [4] SALIR                        |";
		Escribir "                                                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
		Escribir Sin Saltar "                                                       Seleccione una opci?n : ";
		Leer opc;	
		Segun (opc) Hacer
			1: 
				car <- carreras;
			2 : 
				jugaremos(car, PuntosA, PuntosB);
			3: 				
				premios(PuntosA, PuntosB);
		FinSegun
	FinMientras
	gracias;	
FinSubProceso

SubProceso a <- carreras
    Definir opc_a, a como Entero;
    opc_a <- 0;	
    Mientras (opc_a <> 4) Hacer
        Limpiar Pantalla;
        Escribir "";
        Escribir "                                                        ~~~~~~~~~ CANTIDAD DE CARRERAS ~~~~~~~~~";
        Escribir "                                                       |  [1] Una s?la Carrera [Por defecto]   |";
        Escribir "                                                       |  [2] Tres Carreras                    |"; 	
        Escribir "                                                       |  [3] Cinco Carreras                   |";
        Escribir "                                                       |  [4] Menu Anterior                    |";
        Escribir "                                                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
        Escribir Sin Saltar "                                                       Seleccione una opci?n : ";
        Leer opc_a;	
        Segun (opc_a) Hacer
            1 : a <- 1; opc_a <- 4;
            2 : a <- 3; opc_a <- 4;
            3 : a <- 5; opc_a <- 4;
        FinSegun
    FinMientras	
FinSubProceso

SubProceso jugaremos(car por referencia, PA por Referencia, PB por Referencia)
    Definir ii, x, v, c1, c2, c3, i como Entero;
    Definir xb, a, b, c, r1, r2, r3, ganador como Caracter;
    Definir auto como Caracter;
    Definir inicia como Logico;
    Dimension auto[10,91];	
	
    ii <- 0;
	
    Para ii <- 1 Hasta car Con Paso 1 Hacer
        x <- 0;
        v <- 0;
        c1 <- 0;
        c2 <- 0;
        c3 <- 0;
        a <- " ";
        b <- " ";	
        c <- " ";			
        inicia <- Verdadero;
		
        Mientras c1 <= 120 y c2 <= 120 Hacer
            Esperar 50 Milisegundos;
            Borrar Pantalla;	
            v <- aleatorio(1,3);
            segun(v) Hacer
                1 : r1 <- " "; c1 <- c1 + 1;
                2 : r1 <- "  "; c1 <- c1 + 2;
                3 : r1 <- "   "; c1 <- c1 + 3;
            FinSegun
            a <- CONCATENAR(a,r1);			
            v <- aleatorio(1,3);
            segun(v) Hacer
                1 : r2 <- " "; c2 <- c2 + 1;
                2 : r2 <- "  "; c2 <- c2 + 2;
                3 : r2 <- "   "; c2 <- c2 + 3;
            FinSegun
			
            Escribir "";
            Escribir  "                                                              CARRERA Nro ",ii," DE ",car;
            Escribir "";
			
            b <- CONCATENAR(b,r2);			
            auto[0,x]<- "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"; 
            auto[1,x]<- CONCATENAR(a,"       ________"); 
            auto[2,x]<- CONCATENAR(a,"   __/    A     ____");
            auto[3,x]<- CONCATENAR(a," (__ o ___________ o _) ");	
            auto[4,x]<- ""; 
            auto[5,x]<- CONCATENAR(b,"       ________"); 
            auto[6,x]<- CONCATENAR(b,"   __/    B     ____");
            auto[7,x]<- CONCATENAR(b," (__ o ___________ o _) ");	
            auto[8,x]<- "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"; 				
            para i <- 0 Hasta 8 con Paso 1 Hacer
                Escribir auto[i,x];
            FinPara			
            Si (inicia == Verdadero) Entonces
                Escribir "";
                Escribir "                                                         Presiona ENTER para comenzar...";
                Esperar Tecla;
                inicia <- Falso;
            FinSi	
        FinMientras
        Borrar Pantalla;		
		
        Escribir "";
        Escribir  "                                                              CARRERA Nro ",ii," DE ",car;
        Escribir "";
		
        Si (c1 >= c2) Entonces	
            xb <- "";
            para i <- 1 Hasta c1-c2 con Paso 1 Hacer
                xb <- concatenar(xb," ");
            FinPara	
            xb <- CONCATENAR(xb,"|");		
            auto[0,x]<- "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"; 
            auto[1,x]<- CONCATENAR(a,"       ________         | G "); 
            auto[2,x]<- CONCATENAR(a,"   __/    A     ____    | A ");
            auto[3,x]<- CONCATENAR(a," (__ o ___________ o _) | N ");	
            auto[4,x]<- CONCATENAR(a,"                        | A ");
            auto[5,x]<- CONCATENAR(CONCATENAR(b,"       ________         "),xb); 
            auto[6,x]<- CONCATENAR(CONCATENAR(b,"   __/    B     ____    "),xb); 
            auto[7,x]<- CONCATENAR(CONCATENAR(b," (__ o ___________ o _) "),xb); 
            auto[8,x]<- "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"; 
            para i <- 0 Hasta 8 con Paso 1 Hacer
                Escribir auto[i,x];
            FinPara					
            ganador <- "GANADOR AUTO [ A ]";	
            PA <- PA + 1;
        Sino
            xb <- "";
            para i <- 1 Hasta c2-c1 con Paso 1 Hacer
                xb <- concatenar(xb," ");
            FinPara	
            xb <- CONCATENAR(xb,"|");		
            auto[0,x]<- "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"; 
            auto[1,x]<- CONCATENAR(CONCATENAR(a,"       ________         "),xb); 
            auto[2,x]<- CONCATENAR(CONCATENAR(a,"   __/    A     ____    "),xb); 
            auto[3,x]<- CONCATENAR(CONCATENAR(a," (__ o ___________ o _) "),xb); 
            auto[4,x]<- CONCATENAR(b,"                        | G "); 
            auto[5,x]<- CONCATENAR(b,"       ________         | A "); 
            auto[6,x]<- CONCATENAR(b,"   __/    B     ____    | N "); 
            auto[7,x]<- CONCATENAR(b," (__ o ___________ o _) | A "); 
            auto[8,x]<- "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"; 		
            para i <- 0 Hasta 8 con Paso 1 Hacer
                Escribir auto[i,x];
            FinPara		
            ganador <- "GANADOR AUTO [ B ]";		
            PB <- PB + 1;
        FinSi			
		
        Escribir "";
        Escribir "                                                              ",ganador;
        Escribir "";		
        Escribir "                                 Pulsa Cualquier Tecla para la siguiente Carrera [",ii," de ",car,"]";
        Esperar Tecla;
		
    FinPara
	
FinSubProceso

SubProceso premios(PA por Referencia, PB por Referencia)
	
    Definir z, w como Entero;
    Definir e, G1, G2 como caracter;
	
    Limpiar Pantalla;
	
    Si (PA == 0 y PB == 0) Entonces
        Limpiar Pantalla;
        Escribir "";
        Escribir "";
        Escribir "                                                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
        Escribir "                                                       |   AUN NO SE CORRIO NINGUNA CARRERA....   |";
        Escribir "                                                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";		
    SiNo
        Si (PA > PB) Entonces
            G1 <- "A";
            G2 <- "B";
        Sino
            G1 <- "B";
            G2 <- "A";
        FinSi
		
        e <- "                                                                  ";	
        Para z <- 1 Hasta 10 Hacer
            e <- concatenar(e," ");
            Escribir Sin Saltar e;
            Para w <- z Hasta 20-z Hacer
                Escribir Sin Saltar "*";				
            FinPara				
            Escribir "";
        FinPara	
        e <- "                                                                  ";	
        Para z <- 1 Hasta 3	 Hacer
            SI (z == 2) Entonces
                Escribir "                                                                  |      AUTO ",G1,"      |";
                Escribir "                                                                  |    COPA DE ORO   |";
            SiNo
                Escribir Sin Saltar e;
                Para w <- 20 Hasta 1 Hacer
                    Escribir Sin Saltar "*";				
                FinPara				
                Escribir "";
            FinSi			
        FinPara
		
        Escribir "";
        Escribir "";
        Escribir "";
		
        e <- "                                                                  ";	
        Para z <- 1 Hasta 10 Hacer
            e <- concatenar(e," ");
            Escribir Sin Saltar e;
            Para w <- z Hasta 20-z Hacer
                Escribir Sin Saltar "|";				
            FinPara				
            Escribir "";
        FinPara	
        e <- "                                                                  ";	
        Para z <- 1 Hasta 3	 Hacer
            SI (z == 2) Entonces
                Escribir "                                                                  |      AUTO ",G2,"      |";
                Escribir "                                                                  |   COPA DE PLATA  |";
            SiNo
                Escribir Sin Saltar e;
                Para w <- 20 Hasta 1 Hacer
                    Escribir Sin Saltar "|";				
                FinPara				
                Escribir "";
            FinSi			
        FinPara
    FinSi
    Escribir "";
    Escribir "                                                              Presiona ENTER para Continuar...";
    PA <- 0;
    PB <- 0;
    Esperar Tecla;
FinSubProceso

SubProceso gracias
    Limpiar Pantalla;
    Escribir "                                                       ~~~~~~~~~~~~~~~~~~~~~~~";
    Escribir "                                                       |   Gracias por jugar |";
    Escribir "                                                       ~~~~~~~~~~~~~~~~~~~~~~~";
FinSubProceso


SubProceso introGame(1)
	
	definir i como entero;
	definir ta,tb,tc,td,te,tf,tg,th,ti,tj,tk,tl,tm,tn,to,tp,tq,tr,ts,tt,tu,tv,tw,tx,ty,tz Como Caracter;
	definir ua,ub,uc,ud,ue,uf,ug,uh,ui,uj,uk,ul,um,un,uo,up,uq,ur Como Caracter;
	definir t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t20,t20a,t21,t22,t23,t24 Como Caracter;
	definir t25,t26,t27,t28,t29,t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t40,t41,t42,t43,t44,t45,t46 Como Caracter;
	definir t47,t48,t49,t50,t51,t52,t53,t54,t55,t56,t57,t58,t59,t60,t61,t62,t63 Como Caracter;
	definir g1,g2,g3,g4,g5,g6,g7,g8,g9,g10,g11,g12,g13,g14,g15,g16,g17,g18,g19,g20,g21 Como Caracter;
	definir j1,j2,j3,j4,j5,j6,j7,j8,j9,j10,j11,j12,j13,j14,j15,j16,j17,j18,j19,j20,j21,j22,j23,j24 Como Caracter;
	definir j25,j26,j27,j28,j29,j30,j31,j32,j33,j34,j35,j36,j37,j38,j39,j40,j41,j42,j43,j44,j45,j46,j47,j48,j49 Como Caracter;
	definir j50,j51,j52,j53,j54,j55,j56,j57,j58, j59, j61,j62,j63,j64 Como Caracter;
	definir j65,j66,j67,j68,j69,j70,j71,j72,j73,j74,j75,j76,j77,j78,j79,j80,j81,j82,j83,j84,j85,j86,j87 Como Caracter;
	definir j88,j89,j90,j91,j92,j93,j94,j95,j96,j97,j98,j99,j100,j101,j102,j103,j104 Como Caracter;
	definir m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16,m17,m18,m19,m20,m21,m22,m23,m24,m25,m26,m27,m28,m29 Como Caracter;
	definir m30,m31,m32,m33,m34,m35,m36,m37,m38,m39,m40,m41,m42,m43,m44,m45,m46,m47,m48,m49,m50,m51,m52,m53,m54,m55,m56 Como Caracter;
	//variables del game
	definir m, hm, hm2, wing, instrucciones, logodeljuego, cadena2, cadena1, nombre, resp, resul1, resul2 Como Caracter;
	definir cadena3,g, me3,p Como Caracter;
	definir a, b como cadena;
	definir  j, l, puntos, numx, x como Entero;
	
	
	
	Dimension ta[13];
	ta[0]<-"         ..........           @@@@@    @@@@@.......                      ";
	ta[1]<-"          .........          @     @  @     @.......                     ";
	ta[2]<-"           ........             @@@   @     @........                    ";
	ta[3]<-"            .......           @@      @     @  .......                   ";
	ta[4]<-"             ......          @@@@@@@   @@@@@  th ......                  ";
	ta[5]<-"              .....        ----------------------- .....                 ";
	ta[6]<-"               ....          C  E  N  T  U  R  Y     ....                ";
	ta[7]<-"                ...        -----------------------     ...               ";
	ta[8]<-"                 ..        @@@@@ @@@@@ @   @ @@@@@       ..              ";
	ta[9]<-"                 ==          @   @      @ @    @          ==             ";
	ta[10]<-"               __|__        @   @@@@    @     @        __|__            ";
	ta[11]<-"             |      |       @   @      @ @    @       |      |          ";
	ta[12]<-"    _________|______|_____  @   @@@@@ @   @   @  _____|______|_________ ";
	
	Dimension tb[13]; 
	tb[0]<-"            ..........         @@@@@    @@@@@.........                   ";
	tb[1]<-"            .........         @     @  @     @.........                  ";
	tb[2]<-"             ........            @@@   @     @ .........                 ";
	tb[3]<-"              .......          @@      @     @  .........                ";
	tb[4]<-"              .......         @@@@@@@   @@@@@  th .......                ";
	tb[5]<-"               .....       ----------------------- ......                ";
	tb[6]<-"                ....         C  E  N  T  U  R  Y     ....                ";
	tb[7]<-"                 ...       -----------------------     ...               ";
	tb[8]<-"                 ..        @@@@@ @@@@@ @   @ @@@@@       ..              ";
	tb[9]<-"                 ==          @   @      @ @    @          ==             ";
	tb[10]<-"               __|__        @   @@@@    @     @        __|__            ";
	tb[11]<-"             |      |       @   @      @ @    @       |      |          "; 
	tb[12]<-"     _________|______|_____ @   @@@@@ @   @   @  _____|______|_________ ";
	
	Dimension tc[13]; 
	tc[0]<-"           ..........         @@@@@    @@@@@ ..........                 ";
	tc[1]<-"            .........        @     @  @     @ .........                 ";
	tc[2]<-"             ........           @@@   @     @  .........                ";
	tc[3]<-"              .......         @@      @     @   ........                ";
	tc[4]<-"              .......        @@@@@@@   @@@@@  th  .......               ";
	tc[5]<-"               .....       ----------------------- .......              ";
	tc[6]<-"                ....         C  E  N  T  U  R  Y     .....              ";
	tc[7]<-"                 ..        -----------------------     ....             ";
	tc[8]<-"                ..        @@@@@ @@@@@ @   @ @@@@@       ..              ";
	tc[9]<-"                ==          @   @      @ @    @          ==             ";
	tc[10]<-"             __|___        @   @@@@    @     @        __|___          ";
	tc[11]<-"            |      |       @   @      @ @    @       |      |          "; 
	tc[12]<-"     _______|______|_____  @   @@@@@ @   @   @  _____|______|________  ";
	
	
	Dimension td[13];
	td[0]<-"              ..........       @@@@@    @@@@@   ..........               ";
	td[1]<-"               .........      @     @  @     @   .........               ";
	td[2]<-"               .........         @@@   @     @    ........               ";
	td[3]<-"                .......        @@      @     @     .......               ";
	td[4]<-"                 .....        @@@@@@@   @@@@@  th   .......              ";
	td[5]<-"                 .....      -----------------------  ......              ";
	td[6]<-"                  ...         C  E  N  T  U  R  Y      .....             ";
	td[7]<-"                  ..        -----------------------     ....             ";
	td[8]<-"                 ..        @@@@@ @@@@@ @   @ @@@@@       ...             ";
	td[9]<-"                  ==         @   @      @ @    @          ==             ";
	td[10]<-"                __|___      @   @@@@    @     @       __|___           ";
	td[11]<-"               |      |     @   @      @ @    @       |      |          "; 
	td[12]<-"      _________|______|_____@   @@@@@ @   @   @  _____|______|________  ";
	
	
	Dimension te[13];
	te[0]<-"                .........      @@@@@    @@@@@     ..........             ";
	te[1]<-"                .........     @     @  @     @     .........             ";
	te[2]<-"                .........        @@@   @     @      ........             ";
	te[3]<-"                 .......       @@      @     @       ........            ";
	te[4]<-"                 ......       @@@@@@@   @@@@@  th     .......            ";
	te[5]<-"                 .....      -----------------------    ......            ";
	te[6]<-"                  ...         C  E  N  T  U  R  Y       .....            ";
	te[7]<-"                  ..        -----------------------       ...            ";
	te[8]<-"                 ..        @@@@@ @@@@@ @   @ @@@@@        ..             ";
	te[9]<-"                 ==          @   @      @ @    @          ==             ";
	te[10]<-"               __|__        @   @@@@    @     @        __|__            ";
	te[11]<-"             |      |       @   @      @ @    @       |      |          ";
	te[12]<-"     ________|______|_____  @   @@@@@ @   @   @  _____|______|_________ ";
	
	
	Dimension tf[13];
	tf[0]<-"                  .........    @@@@@    @@@@@        ..........         ";
	tf[1]<-"                  .........   @     @  @     @       ..........         ";
	tf[2]<-"                  ........       @@@   @     @        .........         ";
	tf[3]<-"                  .......      @@      @     @         .......          ";
	tf[4]<-"                  ......      @@@@@@@   @@@@@  th       ......          ";
	tf[5]<-"                  .....     -----------------------      .....          ";
	tf[6]<-"                  ....        C  E  N  T  U  R  Y         ....          ";
	tf[7]<-"                  ...       -----------------------        ..           ";
	tf[8]<-"                 ..        @@@@@ @@@@@ @   @ @@@@@        ..            ";
	tf[9]<-"                 ==          @   @      @ @    @          ==            ";
	tf[10]<-"               __|__        @   @@@@    @     @       ___|___          ";
	tf[11]<-"             |      |       @   @      @ @    @       |      |         ";
	tf[12]<-"     ________|______|_____  @   @@@@@ @   @   @  _____|______|_________";
	
	
	Dimension tg[13];
	tg[0]<-"                    .......... @@@@@    @@@@@           .........        ";
	tg[1]<-"                    ......... @     @  @     @          .........        ";
	tg[2]<-"                   .........     @@@   @     @           ........        ";
	tg[3]<-"                   .......     @@      @     @            ......         ";
	tg[4]<-"                   ......     @@@@@@@   @@@@@  th         ......         ";
	tg[5]<-"                  ......    -----------------------        ....          ";
	tg[6]<-"                  .....       C  E  N  T  U  R  Y          ...           ";
	tg[7]<-"                  ....      -----------------------        ...           ";
	tg[8]<-"                 ..        @@@@@ @@@@@ @   @ @@@@@        ..             ";
	tg[9]<-"                 ==          @   @      @ @    @          ==             ";
	tg[10]<-"               __|__        @   @@@@    @     @        __|___            ";
	tg[11]<-"             |      |       @   @      @ @    @       |      |          "; 
	tg[12]<-"    _________|______|_____  @   @@@@@ @   @   @  _____|______|_________ ";
	
	
	Dimension th[13];
	th[0]<-"                  ..........   @@@@@    @@@@@             ...........    ";
	th[1]<-"                  .........   @     @  @     @            ..........     ";
	th[2]<-"                  ........       @@@   @     @             ........      ";
	th[3]<-"                  .......      @@      @     @             ........      ";
	th[4]<-"                  ......      @@@@@@@   @@@@@  th          .......       ";
	th[5]<-"                  .....     -----------------------        .....         ";
	th[6]<-"                  ....        C  E  N  T  U  R  Y          ....          ";
	th[7]<-"                  ...       -----------------------        ...           ";
	th[8]<-"                 ..        @@@@@ @@@@@ @   @ @@@@@        ..             ";
	th[9]<-"                 ==          @   @      @ @    @          ==             ";
	th[10]<-"               __|__        @   @@@@    @     @        __|___            ";
	th[11]<-"             |      |       @   @      @ @    @       |      |          "; 
	th[12]<-"    _________|______|_____  @   @@@@@ @   @   @  _____|______|_________ ";
	
	
	
	Dimension ti[13];
	ti[0]<-"                ...........    @@@@@    @@@@@               ...........   ";
	ti[1]<-"                ..........    @     @  @     @              ..........    ";
	ti[2]<-"                .........        @@@   @     @              .........     ";
	ti[3]<-"                 ........      @@      @     @              ........      ";
	ti[4]<-"                 ......       @@@@@@@   @@@@@  th          ........       ";
	ti[5]<-"                 .....      -----------------------        .......        ";
	ti[6]<-"                  ....        C  E  N  T  U  R  Y          .....          ";
	ti[7]<-"                  ...       -----------------------        ....           ";
	ti[8]<-"                 ..        @@@@@ @@@@@ @   @ @@@@@        ...             ";
	ti[9]<-"                 ==          @   @      @ @    @          ==              ";
	ti[10]<-"              ___|__        @   @@@@    @     @        ___|__            ";
	ti[11]<-"             |      |       @   @      @ @    @       |      |           ";
	ti[12]<-"    _________|______|_____  @   @@@@@ @   @   @  _____|______|_________  ";
	
	Dimension tj[13];
	tj[0]<-"              ...........      @@@@@    @@@@@                 ........... ";
	tj[1]<-"              ..........      @     @  @     @                ..........  ";
	tj[2]<-"               ........          @@@   @     @               ..........   ";
	tj[3]<-"                .......        @@      @     @               .........    ";
	tj[4]<-"                ......        @@@@@@@   @@@@@  th           ........      ";
	tj[5]<-"                 .....      -----------------------         .......       ";
	tj[6]<-"                 ....         C  E  N  T  U  R  Y          .......        ";
	tj[7]<-"                  ...       -----------------------        .....          ";
	tj[8]<-"                 ..        @@@@@ @@@@@ @   @ @@@@@        ...             ";
	tj[9]<-"                 ==          @   @      @ @    @          ==              ";
	tj[10]<-"               __|__        @   @@@@    @     @        __|__             ";
	tj[11]<-"             |      |       @   @      @ @    @       |      |           ";
	tj[12]<-"    _________|______|_____  @   @@@@@ @   @   @  _____|______|_________  ";
	
	Dimension tk[13];
	tk[0]<-"            ...........        @@@@@    @@@@@                   ......... ";
	tk[1]<-"            ..........        @     @  @     @                  ......... ";
	tk[2]<-"             .........           @@@   @     @                 .........  ";
	tk[3]<-"              .......          @@      @     @                 ........   ";
	tk[4]<-"               ......         @@@@@@@   @@@@@  th             ........    ";
	tk[5]<-"                ....        -----------------------          ........     ";
	tk[6]<-"                 ...          C  E  N  T  U  R  Y           .......       ";
	tk[7]<-"                 ..        -----------------------         .....          ";
	tk[8]<-"                 ..        @@@@@ @@@@@ @   @ @@@@@        ...             ";
	tk[9]<-"                 ==          @   @      @ @    @          ==              ";
	tk[10]<-"               __|__        @   @@@@    @     @        __|__             ";
	tk[11]<-"             |      |       @   @      @ @    @       |      |           "; 
	tk[12]<-"    _________|______|_____  @   @@@@@ @   @   @  _____|______|_________  ";
	
	
	Dimension tl[13];
	tl[0]<-"          ...........          @@@@@    @@@@@                      ...... ";
	tl[1]<-"           ..........         @     @  @     @                    ....... ";
	tl[2]<-"            ........             @@@   @     @                   ........ ";
	tl[3]<-"             .......           @@      @     @                  ......... ";
	tl[4]<-"              ......          @@@@@@@   @@@@@  th              ........   ";
	tl[5]<-"               .....        -----------------------           ........    ";
	tl[6]<-"                ....          C  E  N  T  U  R  Y            .......      ";
	tl[7]<-"                 ...        -----------------------         .....         ";
	tl[8]<-"                 ..        @@@@@ @@@@@ @   @ @@@@@        ...             ";
	tl[9]<-"                 ==          @   @      @ @    @          ==              ";
	tl[10]<-"               __|__        @   @@@@    @     @        __|__             ";
	tl[11]<-"             |      |       @   @      @ @    @       |      |           "; 
	tl[12]<-"    _________|______|_____  @   @@@@@ @   @   @  _____|______|_________  ";
	
	
	Dimension tm[13];
	tm[0]<-"       .............           @@@@@    @@@@@                      ...... ";
	tm[1]<-"         ...........          @     @  @     @                    ....... ";
	tm[2]<-"          ..........             @@@   @     @                   ........ ";
	tm[3]<-"           .........           @@      @     @                  ......... ";
	tm[4]<-"            ........          @@@@@@@   @@@@@  th              ........   ";
	tm[5]<-"             .......        -----------------------           ........    ";
	tm[6]<-"               .....          C  E  N  T  U  R  Y            .......      ";
	tm[7]<-"                ....        -----------------------         .....         ";
	tm[8]<-"                ...        @@@@@ @@@@@ @   @ @@@@@        ...             ";
	tm[9]<-"                 ==          @   @      @ @    @          ==              ";
	tm[10]<-"              ___|__        @   @@@@    @     @        __|___            ";
	tm[11]<-"             |      |       @   @      @ @    @       |      |           "; 
	tm[12]<-"    _________|______|_____  @   @@@@@ @   @   @  _____|______|_________  ";
	
	
	
	
	Dimension tn[13];
	tn[0]<-"      ............             @@@@@    @@@@@                      ...... "; 
	tn[1]<-"       ...........            @     @  @     @                    ....... ";
	tn[2]<-"         ..........              @@@   @     @                   ........ ";
	tn[3]<-"          .........            @@      @     @                  ......... ";
	tn[4]<-"           ........           @@@@@@@   @@@@@  th              ........   ";
	tn[5]<-"            ........        -----------------------           ........    ";
	tn[6]<-"             .......          C  E  N  T  U  R  Y            .......      ";
	tn[7]<-"               .....        -----------------------         .....         ";
	tn[8]<-"                ...        @@@@@ @@@@@ @   @ @@@@@        ...             ";
	tn[9]<-"                 ==          @   @      @ @    @          ==              ";
	tn[10]<-"               __|__        @   @@@@    @     @        __|___            ";
	tn[11]<-"             |      |       @   @      @ @    @       |      |           ";
	tn[12]<-"    _________|______|_____  @   @@@@@ @   @   @  _____|______|_________  ";
	
	
	
	
	Dimension to[13];
	to[0]<-"      ..........               @@@@@    @@@@@                     ....... ";
	to[1]<-"      ..........              @     @  @     @                   ........ ";
	to[2]<-"       ..........                @@@   @     @                  ........  ";
	to[3]<-"         ........              @@      @     @                 ........   ";
	to[4]<-"          ........            @@@@@@@   @@@@@  th             ........    ";
	to[5]<-"           .......          -----------------------           .......     ";
	to[6]<-"             ......           C  E  N  T  U  R  Y            ......       ";
	to[7]<-"               ....         -----------------------         .....         ";
	to[8]<-"                ...        @@@@@ @@@@@ @   @ @@@@@        ...             ";
	to[9]<-"                 ==          @   @      @ @    @          ==              ";
	to[10]<-"               __|__        @   @@@@    @     @        __|__             ";
	to[11]<-"             |      |       @   @      @ @    @       |      |           ";
	to[12]<-"    _________|______|_____  @   @@@@@ @   @   @  _____|______|_________  ";
	
	
	
	Dimension tp[13];
	tp[0]<-"      .......                  @@@@@    @@@@@                   ......... ";
	tp[1]<-"      ........                @     @  @     @                 .........  ";
	tp[2]<-"      .........                  @@@   @     @                .........   ";
	tp[3]<-"       .........               @@      @     @                ........    ";
	tp[4]<-"         .......              @@@@@@@   @@@@@  th            ........     ";
	tp[5]<-"          .......           -----------------------          ......       ";
	tp[6]<-"            ......            C  E  N  T  U  R  Y           .....         ";
	tp[7]<-"              .....         -----------------------         ....          ";
	tp[8]<-"                ...        @@@@@ @@@@@ @   @ @@@@@        ...             ";
	tp[9]<-"                 ==          @   @      @ @    @          ==              ";
	tp[10]<-"               __|__        @   @@@@    @     @        __|__             ";
	tp[11]<-"             |      |       @   @      @ @    @       |      |           ";
	tp[12]<-"    _________|______|_____  @   @@@@@ @   @   @  _____|______|_________  ";
	
	
	Dimension tq[13];
	tq[0]<-"      .....                    @@@@@    @@@@@                 ........    ";
	tq[1]<-"      ......                  @     @  @     @               ........     ";
	tq[2]<-"      .......                    @@@   @     @               ........     ";
	tq[3]<-"      ........                 @@      @     @              ........      ";
	tq[4]<-"       ........               @@@@@@@   @@@@@  th           .......       ";
	tq[5]<-"         .......            -----------------------         .....         ";
	tq[6]<-"           ......             C  E  N  T  U  R  Y          .....          ";
	tq[7]<-"             .....          -----------------------        ....           ";
	tq[8]<-"                ...         @@@@@ @@@@@ @   @ @@@@@        ...            ";
	tq[9]<-"                  ==          @   @      @ @    @          ==             ";
	tq[10]<-"                __|__        @   @@@@    @     @        __|___           ";
	tq[11]<-"              |      |       @   @      @ @    @       |      |          ";
	tq[12]<-"     _________|______|_____  @   @@@@@ @   @   @  _____|______|_________ ";
	
	
	Dimension tr[13];
	tr[0]<-"      .....                    @@@@@    @@@@@              ...........     ";
	tr[1]<-"      ......                  @     @  @     @             ..........      ";
	tr[2]<-"      .......                    @@@   @     @             .........       ";
	tr[3]<-"      ........                 @@      @     @             ........        ";
	tr[4]<-"       ........               @@@@@@@   @@@@@  th          .......         ";
	tr[5]<-"         .......            -----------------------        ......          ";
	tr[6]<-"           ......             C  E  N  T  U  R  Y          .....           ";
	tr[7]<-"             .....          -----------------------        ....            ";
	tr[8]<-"                ...         @@@@@ @@@@@ @   @ @@@@@        ...             ";
	tr[9]<-"                  ==          @   @      @ @    @          ==              ";
	tr[10]<-"               __|__         @   @@@@    @     @        __|___           ";
	tr[11]<-"              |     |        @   @      @ @    @       |      |         "; 
	tr[12]<-"    __________|_____|_____   @   @@@@@ @   @   @  _____|______|_________";
	
	
	Dimension ts[13];
	ts[0]<-"      .....                    @@@@@    @@@@@            ...........       ";
	ts[1]<-"      ......                  @     @  @     @           ..........        ";
	ts[2]<-"      .......                    @@@   @     @           .........         ";
	ts[3]<-"      ........                 @@      @     @            .......          ";
	ts[4]<-"       ........               @@@@@@@   @@@@@  th         ......           ";
	ts[5]<-"         .......            -----------------------       ......           ";
	ts[6]<-"           ......             C  E  N  T  U  R  Y          ....            ";
	ts[7]<-"             .....          -----------------------        ....            ";
	ts[8]<-"                 ...         @@@@@ @@@@@ @   @ @@@@@        ...            ";
	ts[9]<-"                   ==          @   @      @ @    @          ==             ";
	ts[10]<-"               ___|__         @   @@@@    @     @        __|___          ";
	ts[11]<-"              |      |        @   @      @ @    @       |      |        "; 
	ts[12]<-"     _________|______|______  @   @@@@@ @   @   @  _____|______|________";
	
	
	
	Dimension tt[13];
	tt[0]<-"      .....                    @@@@@    @@@@@          ..........          ";
	tt[1]<-"      ......                  @     @  @     @         ..........          ";
	tt[2]<-"      .......                    @@@   @     @          ........           ";
	tt[3]<-"      ........                 @@      @     @           .......           ";
	tt[4]<-"       ........               @@@@@@@   @@@@@  th        ......            ";  
	tt[5]<-"         .......            -----------------------      ......            ";
	tt[6]<-"           ......             C  E  N  T  U  R  Y         ....             ";
	tt[7]<-"             .....          -----------------------       ....             ";
	tt[8]<-"                ...         @@@@@ @@@@@ @   @ @@@@@        ..              ";
	tt[9]<-"                  ==          @   @      @ @    @          ==              ";
	tt[10]<-"               __|__         @   @@@@    @     @        __|__            ";
	tt[11]<-"              |     |        @   @      @ @    @       |     |         ";
	tt[12]<-"    __________|_____|_____   @   @@@@@ @   @   @  _____|_____|_________";
	
	
	
	Dimension tu[13];
	tu[0]<-"      .......                  @@@@@    @@@@@        ..........           ";
	tu[1]<-"      ........                @     @  @     @        .........           ";
	tu[2]<-"      ........                   @@@   @     @        .........           ";
	tu[3]<-"       ........                @@      @     @         ........           ";
	tu[4]<-"        ........              @@@@@@@   @@@@@  th      .......            ";
	tu[5]<-"          .......           -----------------------     ......            ";
	tu[6]<-"            .....             C  E  N  T  U  R  Y        ....             ";
	tu[7]<-"              ....          -----------------------       ...             ";
	tu[8]<-"                ...         @@@@@ @@@@@ @   @ @@@@@        ..             ";
	tu[9]<-"                  ==          @   @      @ @    @          ==             ";
	tu[10]<-"              ___|__         @   @@@@    @     @        __|___          ";
	tu[11]<-"             |      |        @   @      @ @    @       |      |         ";
	tu[12]<-"    _________|______|_____   @   @@@@@ @   @   @  _____|______|_________";
	
	
	
	
	Dimension tv[13];
	tv[0]<-"      .........                @@@@@    @@@@@      ...........             ";
	tv[1]<-"      .........               @     @  @     @     ...........             ";
	tv[2]<-"       .........                 @@@   @     @      ..........             ";
	tv[3]<-"        ........               @@      @     @       .........             ";
	tv[4]<-"         ........             @@@@@@@   @@@@@  th     .......              ";
	tv[5]<-"           ......           -----------------------    ......              ";
	tv[6]<-"             .....            C  E  N  T  U  R  Y        ....              ";
	tv[7]<-"               ....         -----------------------       ...              ";
	tv[8]<-"                 ...        @@@@@ @@@@@ @   @ @@@@@        ..              ";
	tv[9]<-"                  ==          @   @      @ @    @          ==              ";
	tv[10]<-"               __|__         @   @@@@    @     @        __|__            ";
	tv[11]<-"             |      |        @   @      @ @    @       |      |         "; 
	tv[12]<-"    _________|______|_____   @   @@@@@ @   @   @  _____|______|_________";
	
	
	
	
	Dimension tw[13];
	tw[0]<-"        ........               @@@@@    @@@@@    ...........              ";
	tw[1]<-"        ........              @     @  @     @   ...........              ";
	tw[2]<-"         .......                 @@@   @     @    ..........              ";
	tw[3]<-"         ........              @@      @     @      ........              ";
	tw[4]<-"           ......             @@@@@@@   @@@@@  th    .......              ";
	tw[5]<-"             .....          -----------------------   ......              ";
	tw[6]<-"              ....            C  E  N  T  U  R  Y      .....              ";
	tw[7]<-"                ...         -----------------------      ....             ";
	tw[8]<-"                 ...        @@@@@ @@@@@ @   @ @@@@@       ...             ";
	tw[9]<-"                  ==          @   @      @ @    @          ==             ";
	tw[10]<-"              ___|__         @   @@@@    @     @        __|__            ";
	tw[11]<-"             |      |        @   @      @ @    @       |      |         "; 
	tw[12]<-"    _________|______|_____   @   @@@@@ @   @   @  _____|______|_________";
	
	
	
	Dimension tx[13];
	tx[0]<-"         .........             @@@@@    @@@@@  ...........                ";
	tx[1]<-"         .........            @     @  @     @ ...........                ";
	tx[2]<-"          ........               @@@   @     @  ..........                ";
	tx[3]<-"           .......             @@      @     @    .........               ";
	tx[4]<-"            ......            @@@@@@@   @@@@@  th   .......               ";
	tx[5]<-"              .....         -----------------------  ......               ";
	tx[6]<-"               ....           C  E  N  T  U  R  Y     .....               ";
	tx[7]<-"                ...         -----------------------     ....              ";
	tx[8]<-"                  ..        @@@@@ @@@@@ @   @ @@@@@       ..              ";
	tx[9]<-"                  ==          @   @      @ @    @          ==             ";
	tx[10]<-"             ____|__         @   @@@@    @     @        __|__            ";
	tx[11]<-"            |      |         @   @      @ @    @       |      |         "; 
	tx[12]<-"   _________|______|_______  @   @@@@@ @   @   @  _____|______|_________";
	
	
	
	
	Dimension ty[13];
	ty[0]<-"          .........            @@@@@    @@@@@...........                  ";
	ty[1]<-"          .........           @     @  @     @..........                  ";
	ty[2]<-"           ........              @@@   @     @...........                 ";
	ty[3]<-"            .......            @@      @     @  .........                 ";
	ty[4]<-"             ......           @@@@@@@   @@@@@  th .......                 ";
	ty[5]<-"               .....        ----------------------- ......                ";
	ty[6]<-"                ....          C  E  N  T  U  R  Y     .....               ";
	ty[7]<-"                 ...        -----------------------     ....              ";
	ty[8]<-"                  ..        @@@@@ @@@@@ @   @ @@@@@       ..              ";
	ty[9]<-"                  ==          @   @      @ @    @          ==             ";
	ty[10]<-"               __|__         @   @@@@    @     @        __|__            ";
	ty[11]<-"              |      |       @   @      @ @    @       |      |         "; 
	ty[12]<-"   ___________|______|_____  @   @@@@@ @   @   @  _____|______|_________";
	
	
	
	
	Dimension tz[13];
	tz[0]<-"          ..........           @@@@@    @@@@@........                    ";
	tz[1]<-"           .........          @     @  @     @........                   ";
	tz[2]<-"            ........             @@@   @     @.........                  ";
	tz[3]<-"             .......           @@      @     @  ........                 ";
	tz[4]<-"              ......          @@@@@@@   @@@@@  th .......                ";
	tz[5]<-"               .....        ----------------------- ......               ";
	tz[6]<-"                ....          C  E  N  T  U  R  Y     .....              ";
	tz[7]<-"                 ...        -----------------------     ....             ";
	tz[8]<-"                  ..        @@@@@ @@@@@ @   @ @@@@@       ..             ";
	tz[9]<-"                  ==          @   @      @ @    @          ==            ";
	tz[10]<-"               __|__         @   @@@@    @     @        __|___          ";
	tz[11]<-"              |      |       @   @      @ @    @       |      |         ";
	tz[12]<-"   ___________|______|_____  @   @@@@@ @   @   @  _____|______|_________";
	
	
	
	
	Dimension ua[13];
	ua[0]<-"           ..........          @@@@@    @@@@@.......                      ";
	ua[1]<-"            .........         @     @  @     @.......                     ";
	ua[2]<-"             ........            @@@   @     @........                    ";
	ua[3]<-"              ......           @@      @     @  .......                   ";
	ua[4]<-"               .....          @@@@@@@   @@@@@  th ......                  ";
	ua[5]<-"               .....        ----------------------- .....                 ";
	ua[6]<-"                ....          C  E  N  T  U  R  Y     ....                ";
	ua[7]<-"                 ...        -----------------------     ...               ";
	ua[8]<-"                  ..        @@@@@ @@@@@ @   @ @@@@@       ..              ";
	ua[9]<-"                 ==           @   @      @ @    @          ==             ";
	ua[10]<-"             ___|__          @   @@@@    @     @        __|___            ";
	ua[11]<-"            |      |         @   @      @ @    @       |      |         ";
	ua[12]<-"   _________|______|_____    @   @@@@@ @   @   @  _____|______|_________";
	
	
	
	
	Dimension ub[13];
	ub[0]<-"            .........          @@@@@    @@@@@.........                    "; 
	ub[1]<-"             ........         @     @  @     @.........                   ";
	ub[2]<-"              .......            @@@   @     @ .........                  ";
	ub[3]<-"               ......          @@      @     @  .........                 ";
	ub[4]<-"               ......         @@@@@@@   @@@@@  th .......                 ";
	ub[5]<-"                ....        ----------------------- ......                ";
	ub[6]<-"                 ...          C  E  N  T  U  R  Y     ....                ";
	ub[7]<-"                 ...        -----------------------     ...               ";
	ub[8]<-"                  ..       @@@@@ @@@@@ @   @ @@@@@       ..              ";
	ub[9]<-"                  ==         @   @      @ @    @          ==             ";
	ub[10]<-"              ___|__        @   @@@@    @     @        __|__            ";
	ub[11]<-"             |      |       @   @      @ @    @       |      |         ";
	ub[12]<-"    _________|______|_____  @   @@@@@ @   @   @  _____|______|_________";
	
	
	
	
	Dimension uc[13];
	uc[0]<-"            ..........         @@@@@    @@@@@ ..........                 ";
	uc[1]<-"             .........        @     @  @     @ .........                 ";
	uc[2]<-"              ........           @@@   @     @  .........                ";
	uc[3]<-"               .......         @@      @     @   ........                ";
	uc[4]<-"               .......        @@@@@@@   @@@@@  th  .......               ";
	uc[5]<-"                .....       ----------------------- .......              ";
	uc[6]<-"                 ....         C  E  N  T  U  R  Y     .....              ";
	uc[7]<-"                  ..        -----------------------     ....             ";
	uc[8]<-"                  ..        @@@@@ @@@@@ @   @ @@@@@       ..             ";
	uc[9]<-"                  ==          @   @      @ @    @          ==            ";
	uc[10]<-"                __|__        @   @@@@    @     @        __|___          ";
	uc[11]<-"              |      |       @   @      @ @    @       |      |         ";
	uc[12]<-"  ____________|______|_____  @   @@@@@ @   @   @  _____|______|_________";
	
	
	
	
	Dimension ud[13];
	ud[0]<-"              ..........       @@@@@    @@@@@   ..........                ";
	ud[1]<-"               .........      @     @  @     @   .........                ";
	ud[2]<-"               .........         @@@   @     @    ........                ";
	ud[3]<-"                .......        @@      @     @     .......                ";
	ud[4]<-"                 .....        @@@@@@@   @@@@@  th   .......               ";
	ud[5]<-"                 .....      -----------------------  ......               ";
	ud[6]<-"                  ...         C  E  N  T  U  R  Y      .....              ";
	ud[7]<-"                  ..        -----------------------     ....              ";
	ud[8]<-"                  ..        @@@@@ @@@@@ @   @ @@@@@       ...             ";
	ud[9]<-"                  ==          @   @      @ @    @          ==             ";
	ud[10]<-"               __|__         @   @@@@    @     @        __|___            ";
	ud[11]<-"             |      |        @   @      @ @    @       |      |         "; 
	ud[12]<-"    _________|______|_____   @   @@@@@ @   @   @  _____|______|_________";
	
	
	
	
	Dimension ue[13];
	ue[0]<-"                .........      @@@@@    @@@@@     ..........              ";
	ue[1]<-"                .........     @     @  @     @     .........              ";
	ue[2]<-"                .........        @@@   @     @      ........              ";
	ue[3]<-"                 .......       @@      @     @       ........             ";
	ue[4]<-"                 ......       @@@@@@@   @@@@@  th     .......             ";
	ue[5]<-"                 .....      -----------------------    ......             ";
	ue[6]<-"                  ...         C  E  N  T  U  R  Y       .....             ";
	ue[7]<-"                  ..        -----------------------       ...             ";
	ue[8]<-"                  ..        @@@@@ @@@@@ @   @ @@@@@        ..             ";
	ue[9]<-"                  ==          @   @      @ @    @          ==             ";
	ue[10]<-"               __|__         @   @@@@    @     @        __|___            ";
	ue[11]<-"              |      |       @   @      @ @    @       |      |         ";
	ue[12]<-"   ___________|______|_____  @   @@@@@ @   @   @  _____|______|_________";
	
	
	
	
	Dimension uf[13];
	uf[0]<-"                  .........    @@@@@    @@@@@        ..........           ";
	uf[1]<-"                  .........   @     @  @     @       ..........           ";
	uf[2]<-"                  ........       @@@   @     @        .........           ";
	uf[3]<-"                  .......      @@      @     @         .......            ";
	uf[4]<-"                  ......      @@@@@@@   @@@@@  th       ......            ";
	uf[5]<-"                  .....     -----------------------      .....            ";
	uf[6]<-"                  ....        C  E  N  T  U  R  Y         ....            ";
	uf[7]<-"                  ...       -----------------------        ..             ";
	uf[8]<-"                  ..        @@@@@ @@@@@ @   @ @@@@@        ..             ";
	uf[9]<-"                  ==          @   @      @ @    @          ==             ";
	uf[10]<-"               __|__         @   @@@@    @     @        __|___            ";
	uf[11]<-"              |      |       @   @      @ @    @       |      |         ";
	uf[12]<-"   ___________|______|_____  @   @@@@@ @   @   @  _____|______|_________";
	
	
	
	
	Dimension ug[13];
	ug[0]<-"                    .......... @@@@@    @@@@@           .........         ";
	ug[1]<-"                    ......... @     @  @     @          .........         ";
	ug[2]<-"                   .........     @@@   @     @           ........         ";
	ug[3]<-"                   .......     @@      @     @            ......          ";
	ug[4]<-"                   ......     @@@@@@@   @@@@@  th         ......          ";
	ug[5]<-"                  ......    -----------------------        ....           ";
	ug[6]<-"                  .....       C  E  N  T  U  R  Y          ...            ";
	ug[7]<-"                  ....      -----------------------        ...            ";
	ug[8]<-"                  ..        @@@@@ @@@@@ @   @ @@@@@        ..             ";
	ug[9]<-"                  ==          @   @      @ @    @          ==             ";
	ug[10]<-"		    	___|__       @   @@@@    @     @        __|___            ";
	ug[11]<-"              |      |       @   @      @ @    @       |      |         "; 
	ug[12]<-"   _________  |______|_____  @   @@@@@ @   @   @  _____|______|_________";
	
	
	
	
	Dimension uh[13];
	uh[0]<-"                  ..........   @@@@@    @@@@@             ...........     ";
	uh[1]<-"                  .........   @     @  @     @            ..........      ";
	uh[2]<-"                  ........       @@@   @     @             ........       ";
	uh[3]<-"                  .......      @@      @     @             ........       ";
	uh[4]<-"                  ......      @@@@@@@   @@@@@  th          .......        ";
	uh[5]<-"                  .....     -----------------------        .....          ";
	uh[6]<-"                  ....        C  E  N  T  U  R  Y          ....           ";
	uh[7]<-"                  ...       -----------------------        ...            ";
	uh[8]<-"                  ..        @@@@@ @@@@@ @   @ @@@@@        ..             ";
	uh[9]<-"                 ==           @   @      @ @    @          ==             ";
	uh[10]<-"             ___|__          @   @@@@    @     @        __|__            ";
	uh[11]<-"            |      |         @   @      @ @    @       |      |         ";
	uh[12]<-"   _________|______|_____    @   @@@@@ @   @   @  _____|______|_________";
	
	
	
	
	Dimension ui[13];
	ui[0]<-"                ...........    @@@@@    @@@@@               ...........   ";
	ui[1]<-"                ..........    @     @  @     @              ..........    ";
	ui[2]<-"                .........        @@@   @     @              .........     ";
	ui[3]<-"                 ........      @@      @     @              ........      ";
	ui[4]<-"                 ......       @@@@@@@   @@@@@  th          ........       ";
	ui[5]<-"                 .....      -----------------------        .......        ";
	ui[6]<-"                  ....        C  E  N  T  U  R  Y          .....          ";
	ui[7]<-"                  ...       -----------------------        ....           ";
	ui[8]<-"                  ..        @@@@@ @@@@@ @   @ @@@@@        ...            ";
	ui[9]<-"                 ==           @   @      @ @    @           ==             ";
	ui[10]<-"             ___|__          @   @@@@    @     @        ___|__           ";
	ui[11]<-"            |      |         @   @      @ @    @       |      |         "; 
	ui[12]<-"   _________|______|_____    @   @@@@@ @   @   @  _____|______|_________";
	
	
	
	
	Dimension uj[13];
	uj[0]<-"              ...........      @@@@@    @@@@@                 ........... "; 
	uj[1]<-"              ..........      @     @  @     @                ..........  ";
	uj[2]<-"               ........          @@@   @     @               ..........   ";
	uj[3]<-"                .......        @@      @     @               .........    ";
	uj[4]<-"                ......        @@@@@@@   @@@@@  th           ........      ";
	uj[5]<-"                 .....      -----------------------         .......       ";
	uj[6]<-"                 ....         C  E  N  T  U  R  Y          .......        ";
	uj[7]<-"                  ...       -----------------------        .....          ";
	uj[8]<-"                  ..        @@@@@ @@@@@ @   @ @@@@@        ...            ";
	uj[9]<-"                  ==          @   @      @ @    @          ==             ";
	uj[10]<-"             ___|__          @   @@@@    @     @        __|___            ";
	uj[11]<-"            |      |         @   @      @ @    @       |      |         ";
	uj[12]<-"   _________|______|_____    @   @@@@@ @   @   @  _____|______|_________";
	
	
	
	
	Dimension uk[13];
	uk[0]<-"           ...........        @@@@@    @@@@@                   ......... ";
	uk[1]<-"           ..........        @     @  @     @                  ......... ";
	uk[2]<-"            .........           @@@   @     @                 .........  ";
	uk[3]<-"             .......          @@      @     @                 ........   ";
	uk[4]<-"              ......         @@@@@@@   @@@@@  th             ........    ";
	uk[5]<-"               ....        -----------------------          ........     ";
	uk[6]<-"                ...          C  E  N  T  U  R  Y           .......       ";
	uk[7]<-"                 ..        -----------------------         .....         ";
	uk[8]<-"                 ..        @@@@@ @@@@@ @   @ @@@@@        ...            ";
	uk[9]<-"                 ==          @   @      @ @    @           ==             ";
	uk[10]<-"             ___|__         @   @@@@    @     @         __|___           ";
	uk[11]<-"            |      |        @   @      @ @    @        |      |          ";
	uk[12]<-"   _________|______|____    @   @@@@@ @   @   @  ______|______|__________";
	
	
	
	
	Dimension ul[13];
	ul[0]<-"          ...........          @@@@@    @@@@@                      ......"; 
	ul[1]<-"           ..........         @     @  @     @                    .......";
	ul[2]<-"            ........             @@@   @     @                   ........";
	ul[3]<-"             .......           @@      @     @                  .........";
	ul[4]<-"              ......          @@@@@@@   @@@@@  th              ........  ";
	ul[5]<-"               .....        -----------------------           ........   ";
	ul[6]<-"                ....          C  E  N  T  U  R  Y            .......     ";
	ul[7]<-"                 ...        -----------------------         .....        ";
	ul[8]<-"                  ..        @@@@@ @@@@@ @   @ @@@@@        ...           ";
	ul[9]<-"                 ==          @    @      @ @    @          ==            ";
	ul[10]<-"             ___|__         @    @@@@    @     @        __|___          ";
	ul[11]<-"            |      |        @    @      @ @    @       |      |         ";
	ul[12]<-"   _________|______|_____   @    @@@@@ @   @   @  _____|______|_________";
	
	
	
	
	Dimension um[13];
	um[0]<-"       .............           @@@@@    @@@@@                      ...... ";
	um[1]<-"         ...........          @     @  @     @                    ....... ";
	um[2]<-"          ..........             @@@   @     @                   ........ ";
	um[3]<-"           .........           @@      @     @                  ......... ";
	um[4]<-"            ........          @@@@@@@   @@@@@  th              ........   ";
	um[5]<-"             .......        -----------------------           ........    ";
	um[6]<-"               .....          C  E  N  T  U  R  Y            .......      ";
	um[7]<-"                ....        -----------------------         .....         ";
	um[8]<-"                 ...        @@@@@ @@@@@ @   @ @@@@@        ...           ";
	um[9]<-"                 ==           @   @      @ @    @          ==            ";
	um[10]<-"             ___|__          @   @@@@    @     @        __|___          ";
	um[11]<-"            |      |         @   @      @ @    @       |      |         ";
	um[12]<-"   _________|______|_____    @   @@@@@ @   @   @  _____|______|_________";
	
	
	
	
	Dimension un[13]; 
	un[0]<-"      ............             @@@@@    @@@@@                      ...... ";
	un[1]<-"       ...........            @     @  @     @                    ....... ";
	un[2]<-"         ..........              @@@   @     @                   ........ ";
	un[3]<-"          .........            @@      @     @                  ......... ";
	un[4]<-"           ........           @@@@@@@   @@@@@  th              ........   ";
	un[5]<-"            ........        -----------------------           ........    ";
	un[6]<-"             .......          C  E  N  T  U  R  Y            .......      ";
	un[7]<-"               .....        -----------------------         .....         ";
	un[8]<-"                 ...        @@@@@ @@@@@ @   @ @@@@@        ...            ";
	un[9]<-"                  ==          @   @      @ @    @          ==             ";
	un[10]<-"             ____|__         @   @@@@    @     @        __|__            ";
	un[11]<-"            |      |         @   @      @ @    @       |      |         ";
	un[12]<-"   _________|______|_____    @   @@@@@ @   @   @  _____|______|_________";
	
	
	
	
	Dimension uo[13];
	uo[0]<-"      ..........               @@@@@    @@@@@                     .......";
	uo[1]<-"      ..........              @     @  @     @                   ........";
	uo[2]<-"       ..........                @@@   @     @                  ........ ";
	uo[3]<-"         ........              @@      @     @                 ........  ";
	uo[4]<-"          ........            @@@@@@@   @@@@@  th             ........   ";
	uo[5]<-"           .......          -----------------------           .......    ";
	uo[6]<-"             ......           C  E  N  T  U  R  Y            ......      ";
	uo[7]<-"               ....         -----------------------         .....        ";
	uo[8]<-"                 ...        @@@@@ @@@@@ @   @ @@@@@        ...           ";
	uo[9]<-"                  ==          @   @      @ @    @          ==            ";
	uo[10]<-"             ____|__         @   @@@@    @     @        __|___           ";
	uo[11]<-"            |      |         @   @      @ @    @       |      |         ";
	uo[12]<-"   _________|______|_____    @   @@@@@ @   @   @  _____|______|_________";
	
	
	
	
	Dimension up[13];
	up[0]<-"      .......                  @@@@@    @@@@@                   .........";
	up[1]<-"      ........                @     @  @     @                 ......... ";
	up[2]<-"      .........                  @@@   @     @                .........  ";
	up[3]<-"       .........               @@      @     @                ........   ";
	up[4]<-"         .......              @@@@@@@   @@@@@  th            ........    ";
	up[5]<-"          .......           -----------------------          ......      ";
	up[6]<-"            ......            C  E  N  T  U  R  Y           .....        ";
	up[7]<-"              .....         -----------------------         ....         ";
	up[8]<-"                 ...        @@@@@ @@@@@ @   @ @@@@@        ...           ";
	up[9]<-"                  ==          @   @      @ @    @          ==            ";
	up[10]<-"             ____|__         @   @@@@    @     @        __|___          ";
	up[11]<-"            |      |         @   @      @ @    @       |      |         ";
	up[12]<-"    ________|______|_____    @   @@@@@ @   @   @  _____|______|_________";
	
	
	
	
	Dimension uq[13];
	uq[0]<-"      .....                    @@@@@    @@@@@                 ........    ";
	uq[1]<-"      ......                  @     @  @     @               ........     ";
	uq[2]<-"      .......                    @@@   @     @               ........     ";
	uq[3]<-"      ........                 @@      @     @              ........      ";
	uq[4]<-"       ........               @@@@@@@   @@@@@  th           .......       ";
	uq[5]<-"         .......            -----------------------         .....         ";
	uq[6]<-"           ......             C  E  N  T  U  R  Y          .....          ";
	uq[7]<-"             .....          -----------------------        ....           ";
	uq[8]<-"                ...         @@@@@ @@@@@ @   @ @@@@@        ...            ";
	uq[9]<-"                  ==          @   @      @ @    @          ==             ";
	uq[10]<-"               __|__         @   @@@@    @     @        __|___           ";
	uq[11]<-"             |      |        @   @      @ @    @       |      |         "; 
	uq[12]<-"    _________|______|_____   @   @@@@@ @   @   @  _____|______|_________";
	
	
	
	
	Dimension ur[13];
	ur[0]<-"      .....                    @@@@@    @@@@@              ...........   ";
	ur[1]<-"      ......                  @     @  @     @             ..........    ";
	ur[2]<-"      .......                    @@@   @     @             .........     ";
	ur[3]<-"      ........                 @@      @     @             ........      ";
	ur[4]<-"       ........               @@@@@@@   @@@@@  th          .......       ";
	ur[5]<-"         .......            -----------------------        ......        ";
	ur[6]<-"           ......             C  E  N  T  U  R  Y          .....         ";
	ur[7]<-"             .....          -----------------------        ....          ";
	ur[8]<-"                ...         @@@@@ @@@@@ @   @ @@@@@        ...           ";
	ur[9]<-"                 ==           @   @      @ @    @          ==            ";
	ur[10]<-"             ___|__          @   @@@@    @     @        __|___          ";
	ur[11]<-"            |      |         @   @      @ @    @       |      |         ";
	ur[12]<-"   _________|______|_____    @   @@@@@ @   @   @  _____|______|_________";
	
	Dimension t1[13];
	t1[0]<- "                                                                       ";  
	t1[1]<- "                                                                       ";                                                                        
	t1[2]<- "                                                                       ";                                                                         
	t1[3]<- "                                                                       ";                                                                         
	t1[4]<- "                                                                       ";                                                                         
	t1[5]<- "                                                                       ";                                                                         
	t1[6]<- "                                                                       ";                                                                         
	t1[7]<- "                                                                       ";                                                                         
	t1[8]<- "                                                                       ";                                                                         
	t1[9]<- "                                                                       ";                                                                         
	t1[10]<-"                                                                       ";                                                                         
	t1[11]<-"                                                                       ";                                                                         
	t1[12]<-"                                                                       ";                                                                         
	
	
	Dimension t2[13];
	t2[0]<-  "                                                                       ";
	t2[1]<-  "                                                                       ";                                                                         
	t2[2]<-  "                                                                       ";                                                                         
	t2[3]<-  "                                                                       ";                                                                         
	t2[4]<-  "                                                                       ";                                                                        
	t2[5]<-  "                A long time ago in a galaxy far,                       ";
	t2[6]<-  "                far away....                                           ";
	t2[7]<-  "                                                                       ";                                                                         
	t2[8]<-  "                                                                       ";                                                                         
	t2[9]<-  "                                                                       ";                                                                         
	t2[10]<- "                                                                       ";                                                                         
	t2[11]<- "                                                                       ";                                                                         
	t2[12]<- "                                                                       ";                                                                         
	
	
	Dimension t3[13];
	t3[0]<- "                                                                       ";  
	t3[1]<- "                                                                       ";                                                                         
	t3[2]<- "                                                                       ";                                                                         
	t3[3]<- "                                                                       ";                                                                         
	t3[4]<- "                                                                       ";                                                                         
	t3[5]<- "                                                                       ";                                                                         
	t3[6]<- "                                                                       ";                                                                         
	t3[7]<- "                                                                       ";                                                                         
	t3[8]<- "                                                                       ";                                                                         
	t3[9]<- "                                                                       ";                                                                         
	t3[10]<-"                                                                       ";                                                                         
	t3[11]<-"                                                                       ";                                                                         
	t3[12]<-"                                                                       "; 
	
	
	Dimension t4[13];
	t4[0]<- "                                                                         ";
	t4[1]<- "                    8888888888  888    88888                             ";
	t4[2]<- "                   88     88   88 88   88  88                            ";
	t4[3]<- "                    8888  88  88   88  88888                             ";
	t4[4]<- "                       88 88 888888888 88   88                           ";
	t4[5]<- "                88888888  88 88     88 88    888888                      ";
	t4[6]<- "                                                                         ";  
	t4[7]<- "                88  88  88   888    88888    888888                      ";
	t4[8]<- "                88  88  88  88 88   88  88  88                           ";
	t4[9]<- "                88 8888 88 88   88  88888    8888                        ";
	t4[10]<-"                 888  888 888888888 88   88     88                       ";
	t4[11]<-"                  88  88  88     88 88    8888888                        ";
	t4[12]<-"                                                                         ";                                                                         
	
	
	Dimension t5[13];
	t5[0]<- "                                                                       ";  
	t5[1]<- "                                                                       ";                                                                         
	t5[2]<- "                                                                       ";                                                                         
	t5[3]<- "                                                                       ";                                                                         
	t5[4]<- "                                                                       ";                                                                         
	t5[5]<- "                                                                       ";                                                                         
	t5[6]<- "                                                                       ";                                                                         
	t5[7]<- "                                                                       ";                                                                         
	t5[8]<- "                                                                       ";                                                                         
	t5[9]<- "                                                                       ";                                                                         
	t5[10]<-"                                                                       ";                                                                         
	t5[11]<-"                                                                       ";                                                                         
	t5[12]<-"                                                                       ";                                                                          
	
	
	Dimension t6[13];
	t6[0]<- "                                                                       ";  
	t6[1]<- "                                                                       ";                                                                         
	t6[2]<- "                                                                       ";                                                                         
	t6[3]<- "                                                                       ";                                                                         
	t6[4]<- "                                                                       ";                                                                         
	t6[5]<- "                                                                       ";                                                                         
	t6[6]<- "                                                                       ";                                                                         
	t6[7]<- "                                                                       ";                                                                         
	t6[8]<- "                                                                       ";                                                                         
	t6[9]<- "                                                                       ";                                                                         
	t6[10]<-"                                                                       ";                                                                         
	t6[11]<-"                                                                       ";                                                                         
	t6[12]<-"                        E p i s o d e I V                              ";
	
	
	
	
	Dimension t7[13];
	t7[0]<- "                                                                       ";  
	t7[1]<- "                                                                       ";                                                                         
	t7[2]<- "                                                                       ";                                                                         
	t7[3]<- "                                                                       ";                                                                         
	t7[4]<- "                                                                       ";                                                                         
	t7[5]<- "                                                                       ";                                                                         
	t7[6]<- "                                                                       ";                                                                         
	t7[7]<- "                                                                       ";                                                                         
	t7[8]<- "                                                                       ";                                                                         
	t7[9]<- "                                                                       ";                                                                         
	t7[10]<-"                                                                       ";                                                                         
	t7[11]<-"                        E p i s o d e I V                              ";                                                                         
	t7[12]<-"                                                                       ";
	
	
	Dimension t8[13];
	t8[0]<- "                                                                       ";  
	t8[1]<- "                                                                       ";                                                                         
	t8[2]<- "                                                                       ";                                                                         
	t8[3]<- "                                                                       ";                                                                         
	t8[4]<- "                                                                       ";                                                                         
	t8[5]<- "                                                                       ";                                                                         
	t8[6]<- "                                                                       ";                                                                         
	t8[7]<- "                                                                       ";                                                                         
	t8[8]<- "                                                                       ";                                                                         
	t8[9]<- "                                                                       ";                                                                         
	t8[10]<-"                        E p i s o d e I V                              ";                                                                         
	t8[11]<-"                                                                       ";                                                                         
	t8[12]<-"                                                                       ";
	
	
	Dimension t9[13];
	t9[0]<- "                                                                       ";  
	t9[1]<- "                                                                       ";                                                                         
	t9[2]<- "                                                                       ";                                                                         
	t9[3]<- "                                                                       ";                                                                         
	t9[4]<- "                                                                       ";                                                                         
	t9[5]<- "                                                                       ";                                                                         
	t9[6]<- "                                                                       ";                                                                         
	t9[7]<- "                                                                       ";                                                                         
	t9[8]<- "                                                                       ";                                                                         
	t9[9]<- "                          E p i s o d e I V                            ";                                                                         
	t9[10]<-"                                                                       ";                                                                         
	t9[11]<-"                                                                       ";                                                                         
	t9[12]<-"                        A   N E W   H O P E                            ";
	
	
	
	Dimension t10[13];
	t10[0]<- "                                                                       ";
	t10[1]<- "                                                                       ";
	t10[2]<- "                                                                       ";                                                                         
	t10[3]<- "                                                                       ";                                                                         
	t10[4]<- "                                                                       ";                                                                         
	t10[5]<- "                                                                       ";                                                                         
	t10[6]<- "                                                                       ";                                                                         
	t10[7]<- "                         E p i s o d e I V                             ";                                                                         
	t10[8]<- "                                                                       ";                                                                         
	t10[9]<- "                                                                       ";                                                                         
	t10[10]<-"                        A   N E W   H O P E                            ";                                                                         
	t10[11]<-"                                                                       ";                                                                         
	t10[12]<-"                                                                       "; 
	
	
	
	
	Dimension t11[13];
	t11[0]<- "                                                                       ";
	t11[1]<- "                                                                       ";
	t11[2]<- "                                                                       ";                                                                         
	t11[3]<- "                                                                       ";                                                                         
	t11[4]<- "                                                                       ";                                                                         
	t11[5]<- "                                                                       ";                                                                         
	t11[6]<- "                         E p i s o d e I V                             ";                                                                         
	t11[7]<- "                                                                       ";                                                                         
	t11[8]<- "                                                                       ";                                                                         
	t11[9]<- "                        A   N E W   H O P E                            ";                                                                         
	t11[10]<-"                                                                       ";                                                                         
	t11[11]<-"                                                                       ";                                                                         
	t11[12]<-"                                                                       ";
	
	
	
	Dimension t12[13];
	t12[0]<- "                                                                       ";
	t12[1]<- "                                                                       ";
	t12[2]<- "                                                                       ";                                                                         
	t12[3]<- "                                                                       ";                                                                         
	t12[4]<- "                                                                       ";                                                                         
	t12[5]<- "                         E p i s o d e I V                             ";                                                                         
	t12[6]<- "                                                                       ";                                                                         
	t12[7]<- "                                                                       ";                                                                         
	t12[8]<- "                        A   N E W   H O P E                            ";                                                                         
	t12[9]<- "                                                                       ";                                                                         
	t12[10]<-"                                                                       ";                                                                         
	t12[11]<-"       I t  i s   a   p e r i o d   o f   c i v i l   w a r.           ";                                                                         
	t12[12]<-"                                                                       ";
	
	
	Dimension t13[13];
	t13[0]<- "                                                                       ";
	t13[1]<- "                                                                       ";
	t13[2]<- "                                                                       ";                                                                         
	t13[3]<- "                                                                       ";                                                                         
	t13[4]<- "                         E p i s o d e I V                             ";                                                                         
	t13[5]<- "                                                                       ";                                                                         
	t13[6]<- "                                                                       ";                                                                         
	t13[7]<- "                        A   N E W   H O P E                            ";                                                                         
	t13[8]<- "                                                                       ";                                                                         
	t13[9]<- "                                                                       ";                                                                         
	t13[10]<-"       I t  i s   a   p e r i o d   o f   c i v i l   w a r.           ";                                                                         
	t13[11]<-"                                                                       ";                                                                         
	t13[12]<-"                                                                       ";
	
	
	
	Dimension t14[13];
	t14[0]<- "                                                                       ";
	t14[1]<- "                                                                       ";
	t14[2]<- "                                                                       ";                                                                         
	t14[3]<- "                         E p i s o d e I V                             ";                                                                         
	t14[4]<- "                                                                       ";                                                                         
	t14[5]<- "                                                                       ";                                                                         
	t14[6]<- "                        A   N E W   H O P E                            ";                                                                         
	t14[7]<- "                                                                       ";                                                                         
	t14[8]<- "                                                                       ";                                                                         
	t14[9]<- "       I t  i s   a   p e r i o d   o f   c i v i l   w a r.           ";                                                                         
	t14[10]<-"                                                                       ";                                                                         
	t14[11]<-"        R e b e l    s p a c e s h i p s ,   s t r i k i n g           ";                                                                         
	t14[12]<-"                                                                       ";
	
	
	
	
	Dimension t15[13];
	t15[0]<- "                                                                       ";
	t15[1]<- "                                                                       ";
	t15[2]<- "                         E p i s o d e I V                             ";                                                                         
	t15[3]<- "                                                                       ";                                                                         
	t15[4]<- "                                                                       ";                                                                         
	t15[5]<- "                        A   N E W   H O P E                            ";                                                                         
	t15[6]<- "                                                                       ";                                                                         
	t15[7]<- "                                                                       ";                                                                         
	t15[8]<- "       I t  i s   a   p e r i o d   o f   c i v i l   w a r.           ";                                                                         
	t15[9]<- "                                                                       ";                                                                         
	t15[10]<-"       R e b e l    s p a c e s h i p s ,   s t r i k i n g            ";                                                                         
	t15[11]<-"                                                                       ";                                                                         
	t15[12]<-"       f r o m   a  h i d d e n   b a s e ,  h a v e  w o n            ";
	
	
	
	
	Dimension t16[13];
	t16[0]<- "                                                                       ";
	t16[1]<- "                         E p i s o d e I V                             ";
	t16[2]<- "                                                                       ";                                                                         
	t16[3]<- "                                                                       ";                                                                         
	t16[4]<- "                        A   N E W   H O P E                            ";                                                                         
	t16[5]<- "                                                                       ";                                                                         
	t16[6]<- "                                                                       ";                                                                         
	t16[7]<- "       I t  i s   a   p e r i o d   o f   c i v i l   w a r.           ";                                                                         
	t16[8]<- "                                                                       ";                                                                         
	t16[9]<- "       R e b e l    s p a c e s h i p s ,   s t r i k i n g            ";                                                                         
	t16[10]<-"                                                                       ";                                                                         
	t16[11]<-"       f r o m   a  h i d d e n   b a s e ,  h a v e  w o n            ";                                                                         
	t16[12]<-"                                                                       ";
	
	
	Dimension t17[13];
	t17[0]<- "                         E p i s o d e I V                             ";
	t17[1]<- "                                                                       ";
	t17[2]<- "                                                                       ";                                                                         
	t17[3]<- "                        A   N E W   H O P E                            ";                                                                         
	t17[4]<- "                                                                       ";                                                                         
	t17[5]<- "                                                                       ";                                                                         
	t17[6]<- "       I t  i s   a   p e r i o d   o f   c i v i l   w a r.           ";                                                                         
	t17[7]<- "                                                                       ";                                                                         
	t17[8]<- "       R e b e l    s p a c e s h i p s ,   s t r i k i n g            ";                                                                         
	t17[9]<- "                                                                       ";                                                                         
	t17[10]<-"       f r o m   a  h i d d e n   b a s e ,  h a v e  w o n            ";                                                                         
	t17[11]<-"                                                                       ";                                                                         
	t17[12]<-"       t h e i r   f i r s t  v i c t o r y   a g a i n s t            ";
	
	
	Dimension t18[13];
	t18[0]<- "                                                                       ";
	t18[1]<- "                                                                       ";
	t18[2]<- "                        A   N E W   H O P E                            ";                                                                         
	t18[3]<- "                                                                       ";                                                                         
	t18[4]<- "                                                                       ";                                                                         
	t18[5]<- "       I t  i s   a   p e r i o d   o f   c i v i l   w a r.           ";                                                                         
	t18[6]<- "                                                                       ";                                                                         
	t18[7]<- "       R e b e l    s p a c e s h i p s ,   s t r i k i n g            ";                                                                         
	t18[8]<- "                                                                       ";                                                                         
	t18[9]<- "       f r o m   a  h i d d e n   b a s e ,  h a v e  w o n            ";                                                                         
	t18[10]<-"                                                                       ";                                                                         
	t18[11]<-"       t h e i r   f i r s t  v i c t o r y   a g a i n s t            ";                                                                         
	t18[12]<-"                                                                       ";
	
	
	Dimension t19[13];
	t19[0]<- "                                                                       ";
	t19[1]<- "                        A   N E W   H O P E                            ";
	t19[2]<- "                                                                       ";                                                                         
	t19[3]<- "                                                                       ";                                                                         
	t19[4]<- "       I t  i s   a   p e r i o d   o f   c i v i l   w a r.           ";                                                                         
	t19[5]<- "                                                                       ";                                                                         
	t19[6]<- "       R e b e l    s p a c e s h i p s ,   s t r i k i n g            ";                                                                         
	t19[7]<- "                                                                       ";                                                                         
	t19[8]<- "       f r o m   a  h i d d e n   b a s e ,  h a v e  w o n            ";                                                                         
	t19[9]<- "                                                                       ";                                                                         
	t19[10]<-"       t h e i r   f i r s t  v i c t o r y   a g a i n s t            ";                                                                         
	t19[11]<-"                                                                       ";                                                                         
	t19[12]<-"       t h e   e v i l   G a l a c t i c   E m p i r e.                ";
	
	
	Dimension t20[13];
	t20[0]<- "                        A   N E W   H O P E                            ";
	t20[1]<- "                                                                       ";
	t20[2]<- "                                                                       ";                                                                         
	t20[3]<- "       I t  i s   a   p e r i o d   o f   c i v i l   w a r.           ";                                                                         
	t20[4]<- "                                                                       ";                                                                         
	t20[5]<- "       R e b e l    s p a c e s h i p s ,   s t r i k i n g            ";                                                                         
	t20[6]<- "                                                                       ";                                                                         
	t20[7]<- "       f r o m   a  h i d d e n   b a s e ,  h a v e  w o n            ";                                                                         
	t20[8]<- "                                                                       ";                                                                         
	t20[9]<- "       t h e i r   f i r s t  v i c t o r y   a g a i n s t            ";                                                                         
	t20[10]<-"                                                                       ";                                                                         
	t20[11]<-"       t h e   e v i l   G a l a c t i c   E m p i r e.                ";                                                                         
	t20[12]<-"                                                                       ";
	
	
	
	Dimension t20a[13];
	t20a[0]<- "                                                                       ";
	t20a[1]<- "                                                                       ";
	t20a[2]<- "       I t  i s   a   p e r i o d   o f   c i v i l   w a r.           ";                                                                         
	t20a[3]<- "                                                                       ";                                                                         
	t20a[4]<- "       R e b e l    s p a c e s h i p s ,   s t r i k i n g            ";                                                                         
	t20a[5]<- "                                                                       ";                                                                         
	t20a[6]<- "       f r o m   a  h i d d e n   b a s e ,  h a v e  w o n            ";                                                                         
	t20a[7]<- "                                                                       ";                                                                         
	t20a[8]<- "       t h e i r   f i r s t  v i c t o r y   a g a i n s t            ";                                                                         
	t20a[9]<- "                                                                       ";                                                                         
	t20a[10]<-"       t h e   e v i l   G a l a c t i c   E m p i r e.                ";                                                                         
	t20a[11]<-"                                                                       ";                                                                         
	t20a[12]<-"                                                                       ";
	
	Dimension t21[13];
	t21[0]<- "                                                                       ";
	t21[1]<- "       I t  i s   a   p e r i o d   o f   c i v i l   w a r.           ";
	t21[2]<- "                                                                       ";                                                                         
	t21[3]<- "       R e b e l    s p a c e s h i p s ,   s t r i k i n g            ";                                                                         
	t21[4]<- "                                                                       ";                                                                         
	t21[5]<- "       f r o m   a  h i d d e n   b a s e ,  h a v e  w o n            ";                                                                         
	t21[6]<- "                                                                       ";                                                                         
	t21[7]<- "       t h e i r   f i r s t  v i c t o r y   a g a i n s t            ";                                                                         
	t21[8]<- "                                                                       ";                                                                         
	t21[9]<- "       t h e   e v i l   G a l a c t i c   E m p i r e.                ";                                                                         
	t21[10]<-"                                                                       ";                                                                         
	t21[11]<-"                                                                       ";                                                                         
	t21[12]<-"                                                                       ";
	
	
	Dimension t22[13];
	t22[0]<- "       I t  i s   a   p e r i o d   o f   c i v i l   w a r.           ";
	t22[1]<- "                                                                       ";
	t22[2]<- "       R e b e l    s p a c e s h i p s ,   s t r i k i n g            ";                                                                         
	t22[3]<- "                                                                       ";                                                                         
	t22[4]<- "       f r o m   a  h i d d e n   b a s e ,  h a v e  w o n            ";                                                                         
	t22[5]<- "                                                                       ";                                                                         
	t22[6]<- "       t h e i r   f i r s t  v i c t o r y   a g a i n s t            ";                                                                         
	t22[7]<- "                                                                       ";                                                                         
	t22[8]<- "       t h e   e v i l   G a l a c t i c   E m p i r e.                ";                                                                         
	t22[9]<- "                                                                       ";                                                                         
	t22[10]<-"                                                                       ";                                                                         
	t22[11]<-"       D u r i n g     t h e     b a t t l e ,    R e b e l            ";                                                                         
	t22[12]<-"                                                                       ";
	
	
	Dimension t23[13];
	t23[0]<- "                                                                       ";
	t23[1]<- "       R e b e l    s p a c e s h i p s ,   s t r i k i n g            ";
	t23[2]<- "                                                                       ";                                                                         
	t23[3]<- "       f r o m   a  h i d d e n   b a s e ,  h a v e  w o n            ";                                                                         
	t23[4]<- "                                                                       ";                                                                         
	t23[5]<- "       t h e i r   f i r s t  v i c t o r y   a g a i n s t            ";                                                                         
	t23[6]<- "                                                                       ";                                                                         
	t23[7]<- "       t h e   e v i l   G a l a c t i c   E m p i r e.                ";                                                                         
	t23[8]<- "                                                                       ";                                                                         
	t23[9]<- "                                                                       ";                                                                         
	t23[10]<-"       D u r i n g     t h e     b a t t l e ,    R e b e l            ";                                                                         
	t23[11]<-"                                                                       ";                                                                         
	t23[12]<-"                                                                       ";
	
	Dimension t24[13];
	t24[0]<- "       R e b e l    s p a c e s h i p s ,   s t r i k i n g            ";
	t24[1]<- "                                                                       ";
	t24[2]<- "       f r o m   a  h i d d e n   b a s e ,  h a v e  w o n            ";                                                                         
	t24[3]<- "                                                                       ";                                                                         
	t24[4]<- "       t h e i r   f i r s t  v i c t o r y   a g a i n s t            ";                                                                         
	t24[5]<- "                                                                       ";                                                                         
	t24[6]<- "       t h e   e v i l   G a l a c t i c   E m p i r e.                ";                                                                         
	t24[7]<- "                                                                       ";                                                                         
	t24[8]<- "                                                                       ";                                                                         
	t24[9]<- "       D u r i n g     t h e     b a t t l e ,    R e b e l            ";                                                                         
	t24[10]<-"                                                                       ";                                                                         
	t24[11]<-"       s p i e s  m a n a g e d  to  s t e a l  s e c r e t            ";                                                                         
	t24[12]<-"                                                                       ";
	
	
	Dimension t25[13];
	t25[0]<- "                                                                       ";
	t25[1]<- "       f r o m   a  h i d d e n   b a s e ,  h a v e  w o n            ";
	t25[2]<- "                                                                       ";                                                                         
	t25[3]<- "       t h e i r   f i r s t  v i c t o r y   a g a i n s t            ";                                                                         
	t25[4]<- "                                                                       ";                                                                         
	t25[5]<- "       t h e   e v i l   G a l a c t i c   E m p i r e.                ";                                                                         
	t25[6]<- "                                                                       ";                                                                         
	t25[7]<- "                                                                       ";                                                                         
	t25[8]<- "       D u r i n g     t h e     b a t t l e ,    R e b e l            ";                                                                         
	t25[9]<- "                                                                       ";                                                                         
	t25[10]<-"       s p i e s  m a n a g e d  to  s t e a l  s e c r e t            ";                                                                         
	t25[11]<-"                                                                       ";                                                                         
	t25[12]<-"                                                                       ";
	
	
	
	Dimension t26[13];
	t26[0]<- "       f r o m   a  h i d d e n   b a s e ,  h a v e  w o n            ";
	t26[1]<- "                                                                       ";
	t26[2]<- "       t h e i r   f i r s t  v i c t o r y   a g a i n s t            ";                                                                         
	t26[3]<- "                                                                       ";                                                                         
	t26[4]<- "       t h e   e v i l   G a l a c t i c   E m p i r e.                ";                                                                         
	t26[5]<- "                                                                       ";                                                                         
	t26[6]<- "                                                                       ";                                                                         
	t26[7]<- "       D u r i n g     t h e     b a t t l e ,    R e b e l            ";                                                                         
	t26[8]<- "                                                                       ";                                                                         
	t26[9]<- "       s p i e s  m a n a g e d  to  s t e a l  s e c r e t            ";                                                                         
	t26[10]<-"                                                                       ";                                                                         
	t26[11]<-"       p l a n s       t o       t h e      E m p i r e  s            ";                                                                      
	t26[12]<-"                                                                       ";
	
	
	Dimension t27[13];
	t27[0]<- "                                                                       ";
	t27[1]<- "       t h e i r   f i r s t  v i c t o r y   a g a i n s t            ";
	t27[2]<- "                                                                       ";                                                                         
	t27[3]<- "       t h e   e v i l   G a l a c t i c   E m p i r e.                ";                                                                         
	t27[4]<- "                                                                       ";                                                                         
	t27[5]<- "                                                                       ";                                                                         
	t27[6]<- "       D u r i n g     t h e     b a t t l e ,    R e b e l            ";                                                                         
	t27[7]<- "                                                                       ";                                                                         
	t27[8]<- "       s p i e s  m a n a g e d  to  s t e a l  s e c r e t            ";                                                                         
	t27[9]<- "                                                                       ";                                                                         
	t27[10]<-"       p l a n s       t o       t h e      E m p i r e   s            ";                                                                         
	t27[11]<-"                                                                       ";                                                                      
	t27[12]<-"                                                                       ";
	
	
	
	Dimension t28[13];
	t28[0]<- "       t h e i r   f i r s t  v i c t o r y   a g a i n s t            ";
	t28[1]<- "                                                                       ";
	t28[2]<- "       t h e   e v i l   G a l a c t i c   E m p i r e.                ";                                                                         
	t28[3]<- "                                                                       ";                                                                         
	t28[4]<- "                                                                       ";                                                                         
	t28[5]<- "       D u r i n g     t h e     b a t t l e ,    R e b e l            ";                                                                         
	t28[6]<- "                                                                       ";                                                                         
	t28[7]<- "       s p i e s  m a n a g e d  to  s t e a l  s e c r e t            ";                                                                         
	t28[8]<- "                                                                       ";                                                                         
	t28[9]<- "       p l a n s       t o       t h e      E m p i r e   s            ";                                                                         
	t28[10]<-"                                                                       ";                                                                         
	t28[11]<-"       u l t i m a t e   w e a p o n ,   t h e    D E A T H            ";                                                                      
	t28[12]<-"                                                                       ";
	
	
	
	Dimension t29[13];
	t29[0]<- "                                                                       ";
	t29[1]<- "       t h e   e v i l   G a l a c t i c   E m p i r e.                ";
	t29[2]<- "                                                                       ";                                                                         
	t29[3]<- "                                                                       ";                                                                         
	t29[4]<- "       D u r i n g     t h e     b a t t l e ,    R e b e l            ";                                                                         
	t29[5]<- "                                                                       ";                                                                         
	t29[6]<- "       s p i e s  m a n a g e d  to  s t e a l  s e c r e t            ";                                                                         
	t29[7]<- "                                                                       ";                                                                         
	t29[8]<- "       p l a n s       t o       t h e      E m p i r e   s            ";                                                                         
	t29[9]<- "                                                                       ";                                                                         
	t29[10]<-"       u l t i m a t e   w e a p o n ,   t h e    D E A T H            ";                                                                         
	t29[11]<-"                                                                       ";                                                                      
	t29[12]<-"                                                                       ";
	
	
	Dimension t30[13];
	t30[0]<- "       t h e   e v i l   G a l a c t i c   E m p i r e.                ";
	t30[1]<- "                                                                       ";
	t30[2]<- "                                                                       ";                                                                         
	t30[3]<- "       D u r i n g     t h e     b a t t l e ,    R e b e l            ";                                                                         
	t30[4]<- "                                                                       ";                                                                         
	t30[5]<- "       s p i e s  m a n a g e d  to  s t e a l  s e c r e t            ";                                                                         
	t30[6]<- "                                                                       ";                                                                         
	t30[7]<- "       p l a n s       t o       t h e      E m p i r e   s            ";                                                                         
	t30[8]<- "                                                                       ";                                                                         
	t30[9]<- "       u l t i m a t e   w e a p o n ,   t h e    D E A T H            ";                                                                         
	t30[10]<-"                                                                       ";                                                                         
	t30[11]<-"       S T A R ,      a n      a r m o r e d      s p a c e            ";                                                                      
	t30[12]<-"                                                                       ";
	
	
	Dimension t31[13];
	t31[0]<- "                                                                       ";
	t31[1]<- "                                                                       ";
	t31[2]<- "       D u r i n g     t h e     b a t t l e ,    R e b e l            ";                                                                         
	t31[3]<- "                                                                       ";                                                                         
	t31[4]<- "       s p i e s  m a n a g e d  to  s t e a l  s e c r e t            ";                                                                         
	t31[5]<- "                                                                       ";                                                                         
	t31[6]<- "       p l a n s       t o       t h e      E m p i r e   s            ";                                                                         
	t31[7]<- "                                                                       ";                                                                         
	t31[8]<- "       u l t i m a t e   w e a p o n ,   t h e    D E A T H            ";                                                                         
	t31[9]<- "                                                                       ";                                                                         
	t31[10]<-"       S T A R ,      a n      a r m o r e d      s p a c e            ";                                                                         
	t31[11]<-"                                                                       ";                                                                      
	t31[12]<-"                                                                       ";
	
	
	
	Dimension t32[13];
	t32[0]<- "                                                                       ";
	t32[1]<- "       D u r i n g     t h e     b a t t l e ,    R e b e l            ";
	t32[2]<- "                                                                       ";                                                                         
	t32[3]<- "       s p i e s  m a n a g e d  to  s t e a l  s e c r e t            ";                                                                         
	t32[4]<- "                                                                       ";                                                                         
	t32[5]<- "       p l a n s       t o       t h e      E m p i r e   s            ";                                                                         
	t32[6]<- "                                                                       ";                                                                         
	t32[7]<- "       u l t i m a t e   w e a p o n ,   t h e    D E A T H            ";                                                                         
	t32[8]<- "                                                                       ";                                                                         
	t32[9]<- "       S T A R ,      a n      a r m o r e d      s p a c e            ";                                                                         
	t32[10]<-"                                                                       ";                                                                         
	t32[11]<-"       s t a t i o n   w i t h   e n o u g h  p o w e r  to            ";                                                                      
	t32[12]<-"                                                                       ";
	
	
	Dimension t33[13];
	t33[0]<- "       D u r i n g     t h e     b a t t l e ,    R e b e l            ";
	t33[1]<- "                                                                       ";                                                                         
	t33[2]<- "       s p i e s  m a n a g e d  to  s t e a l  s e c r e t            ";                                                                         
	t33[3]<- "                                                                       ";                                                                         
	t33[4]<- "       p l a n s       t o       t h e      E m p i r e   s            ";                                                                         
	t33[5]<- "                                                                       ";                                                                         
	t33[6]<- "       u l t i m a t e   w e a p o n ,   t h e    D E A T H            ";                                                                         
	t33[7]<- "                                                                       ";                                                                         
	t33[8]<- "       S T A R ,      a n      a r m o r e d      s p a c e            ";                                                                         
	t33[9]<- "                                                                       ";                                                                         
	t33[10]<-"       s t a t i o n   w i t h   e n o u g h  p o w e r  to            ";                                                                      
	t33[11]<-"                                                                       ";
	t33[12]<-"                                                                       ";
	
	
	Dimension t34[13];
	t34[0]<- "                                                                       ";                                                                         
	t34[1]<- "       s p i e s  m a n a g e d  to  s t e a l  s e c r e t            ";                                                                         
	t34[2]<- "                                                                       ";                                                                         
	t34[3]<- "       p l a n s       t o       t h e      E m p i r e   s            ";                                                                         
	t34[4]<- "                                                                       ";                                                                         
	t34[5]<- "       u l t i m a t e   w e a p o n ,   t h e    D E A T H            ";                                                                         
	t34[6]<- "                                                                       ";                                                                         
	t34[7]<- "       S T A R ,      a n      a r m o r e d      s p a c e            ";                                                                         
	t34[8]<- "                                                                       ";                                                                         
	t34[9]<- "       s t a t i o n   w i t h   e n o u g h  p o w e r  to            ";                                                                      
	t34[10]<-"                                                                       ";
	t34[11]<-"       d e s t r o y   a n   e n t i r e  p l a n e t.                 ";
	t34[12]<-"                                                                       ";
	
	
	Dimension t35[13];
	t35[0]<- "       s p i e s  m a n a g e d  to  s t e a l  s e c r e t            ";                                                                         
	t35[1]<- "                                                                       ";                                                                         
	t35[2]<- "       p l a n s       t o       t h e      E m p i r e   s            ";                                                                         
	t35[3]<- "                                                                       ";                                                                         
	t35[4]<- "       u l t i m a t e   w e a p o n ,   t h e    D E A T H            ";                                                                         
	t35[5]<- "                                                                       ";                                                                         
	t35[6]<- "       S T A R ,      a n      a r m o r e d      s p a c e            ";                                                                         
	t35[7]<- "                                                                       ";                                                                         
	t35[8]<- "       s t a t i o n   w i t h   e n o u g h  p o w e r  to            ";                                                                      
	t35[9]<- "                                                                       ";
	t35[10]<-"       d e s t r o y   a n   e n t i r e  p l a n e t.                 ";
	t35[11]<-"                                                                       ";
	t35[12]<-"                                                                       "; 
	
	Dimension t36[13];
	t36[0]<- "                                                                       ";                                                                         
	t36[1]<- "       p l a n s       t o       t h e      E m p i r e   s            ";                                                                         
	t36[2]<- "                                                                       ";                                                                         
	t36[3]<- "       u l t i m a t e   w e a p o n ,   t h e    D E A T H            ";                                                                         
	t36[4]<- "                                                                       ";                                                                         
	t36[5]<- "       S T A R ,      a n      a r m o r e d      s p a c e            ";                                                                         
	t36[6]<- "                                                                       ";                                                                         
	t36[7]<- "       s t a t i o n   w i t h   e n o u g h  p o w e r  to            ";                                                                      
	t36[8]<- "                                                                       ";
	t36[9]<- "       d e s t r o y   a n   e n t i r e  p l a n e t.                 ";
	t36[10]<-"                                                                       ";
	t36[11]<-"                                                                       "; 
	t36[12]<-"                                                                       ";
	
	Dimension t37[13];
	t37[0]<- "       p l a n s       t o       t h e      E m p i r e   s            ";                                                                         
	t37[1]<- "                                                                       ";                                                                         
	t37[2]<- "       u l t i m a t e   w e a p o n ,   t h e    D E A T H            ";                                                                         
	t37[3]<- "                                                                       ";                                                                         
	t37[4]<- "       S T A R ,      a n      a r m o r e d      s p a c e            ";                                                                         
	t37[5]<- "                                                                       ";                                                                         
	t37[6]<- "       s t a t i o n   w i t h   e n o u g h  p o w e r  to            ";                                                                      
	t37[7]<- "                                                                       ";
	t37[8]<- "       d e s t r o y   a n   e n t i r e  p l a n e t.                 ";
	t37[9]<- "                                                                       ";
	t37[10]<-"                                                                       "; 
	t37[11]<-"                                                                       ";
	t37[12]<-"       P u r s u e d      b y     t h e     E m p i r e ` s            ";
	
	
	Dimension t38[13];
	t38[0]<- "                                                                       ";                                                                         
	t38[1]<- "       u l t i m a t e   w e a p o n ,   t h e    D E A T H            ";                                                                         
	t38[2]<- "                                                                       ";                                                                         
	t38[3]<- "       S T A R ,      a n      a r m o r e d      s p a c e            ";                                                                         
	t38[4]<- "                                                                       ";                                                                         
	t38[5]<- "       s t a t i o n   w i t h   e n o u g h  p o w e r  to            ";                                                                      
	t38[6]<- "                                                                       ";
	t38[7]<- "       d e s t r o y   a n   e n t i r e  p l a n e t.                 ";
	t38[8]<- "                                                                       ";
	t38[9]<- "                                                                       "; 
	t38[10]<-"                                                                       ";
	t38[11]<-"       P u r s u e d      b y     t h e     E m p i r e   s            ";
	t38[12]<-"                                                                       ";
	
	
	
	Dimension t39[13];
	t39[0]<- "       u l t i m a t e   w e a p o n ,   t h e    D E A T H            ";                                                                         
	t39[1]<- "                                                                       ";                                                                         
	t39[2]<- "       S T A R ,      a n      a r m o r e d      s p a c e            ";                                                                         
	t39[3]<- "                                                                       ";                                                                         
	t39[4]<- "       s t a t i o n   w i t h   e n o u g h  p o w e r  to            ";                                                                      
	t39[5]<- "                                                                       ";
	t39[6]<- "       d e s t r o y   a n   e n t i r e  p l a n e t.                 ";
	t39[7]<- "                                                                       ";
	t39[8]<- "                                                                       "; 
	t39[9]<- "                                                                       ";
	t39[10]<-"       P u r s u e d      b y     t h e     E m p i r e   s            ";
	t39[11]<-"                                                                       ";
	t39[12]<-"       s i n i s t e r    a g e n t s ,     P r i n c e s s            ";
	
	
	Dimension t40[13];
	t40[0]<- "                                                                       ";                                                                         
	t40[1]<- "       S T A R ,      a n      a r m o r e d      s p a c e            ";                                                                         
	t40[2]<- "                                                                       ";                                                                         
	t40[3]<- "       s t a t i o n   w i t h   e n o u g h  p o w e r  to            ";                                                                      
	t40[4]<- "                                                                       ";
	t40[5]<- "       d e s t r o y   a n   e n t i r e  p l a n e t.                 ";
	t40[6]<- "                                                                       ";
	t40[7]<- "                                                                       "; 
	t40[8]<- "                                                                       ";
	t40[9]<- "       P u r s u e d      b y     t h e     E m p i r e   s            ";
	t40[10]<-"                                                                       ";
	t40[11]<-"       s i n i s t e r    a g e n t s ,     P r i n c e s s            ";
	t40[12]<-"                                                                       ";
	
	
	Dimension t41[13];
	t41[0]<- "       S T A R ,      a n      a r m o r e d      s p a c e            ";                                                                         
	t41[1]<- "                                                                       ";                                                                         
	t41[2]<- "       s t a t i o n   w i t h   e n o u g h  p o w e r  to            ";                                                                      
	t41[3]<- "                                                                       ";
	t41[4]<- "       d e s t r o y   a n   e n t i r e  p l a n e t.                 ";
	t41[5]<- "                                                                       ";
	t41[6]<- "                                                                       "; 
	t41[7]<- "                                                                       ";
	t41[8]<- "       P u r s u e d      b y     t h e     E m p i r e   s            ";
	t41[9]<- "                                                                       ";
	t41[10]<-"       s i n i s t e r    a g e n t s ,     P r i n c e s s            ";
	t41[11]<-"                                                                       ";
	t41[12]<-"       L e i a   r a c e s   h o m e    a b o a r d   h e r            ";
	
	
	Dimension t42[13];                                                                        
	t42[0]<- "                                                                       ";                                                                         
	t42[1]<- "       s t a t i o n   w i t h   e n o u g h  p o w e r  to            ";                                                                      
	t42[2]<- "                                                                       ";
	t42[3]<- "       d e s t r o y   a n   e n t i r e  p l a n e t.                 ";
	t42[4]<- "                                                                       ";
	t42[5]<- "                                                                       "; 
	t42[6]<- "                                                                       ";
	t42[7]<- "       P u r s u e d      b y     t h e     E m p i r e   s            ";
	t42[8]<- "                                                                       ";
	t42[9]<- "       s i n i s t e r    a g e n t s ,     P r i n c e s s            ";
	t42[10]<-"                                                                       ";
	t42[11]<-"       L e i a   r a c e s   h o m e    a b o a r d   h e r            ";
	t42[12]<-"                                                                       ";
	
	
	
	Dimension t43[13];                                                                        
	t43[0]<- "       s t a t i o n   w i t h   e n o u g h  p o w e r  to            ";                                                                      
	t43[1]<- "                                                                       ";
	t43[2]<- "       d e s t r o y   a n   e n t i r e  p l a n e t.                 ";
	t43[3]<- "                                                                       ";
	t43[4]<- "                                                                       "; 
	t43[5]<- "                                                                       ";
	t43[6]<- "       P u r s u e d      b y     t h e     E m p i r e   s            ";
	t43[7]<- "                                                                       ";
	t43[8]<- "       s i n i s t e r    a g e n t s ,     P r i n c e s s            ";
	t43[9]<- "                                                                       ";
	t43[10]<-"       L e i a   r a c e s   h o m e    a b o a r d   h e r            ";
	t43[11]<-"                                                                       ";
	t43[12]<-"       s t a r s h i p ,   c u s t o d i a n    o f   t h e            ";
	
	
	Dimension t44[13];                                                                                                                                             
	t44[0]<- "                                                                       ";
	t44[1]<- "       d e s t r o y   a n   e n t i r e  p l a n e t.                 ";
	t44[2]<- "                                                                       ";
	t44[3]<- "                                                                       "; 
	t44[4]<- "                                                                       ";
	t44[5]<- "       P u r s u e d      b y     t h e     E m p i r e   s            ";
	t44[6]<- "                                                                       ";
	t44[7]<- "       s i n i s t e r    a g e n t s ,     P r i n c e s s            ";
	t44[8]<- "                                                                       ";
	t44[9]<- "       L e i a   r a c e s   h o m e    a b o a r d   h e r            ";
	t44[10]<-"                                                                       ";
	t44[11]<-"       s t a r s h i p ,   c u s t o d i a n    o f   t h e            ";
	t44[12]<-"                                                                       ";
	
	
	Dimension t45[13];                                                                                                                                             
	t45[0]<- "       d e s t r o y   a n   e n t i r e  p l a n e t.                 ";
	t45[1]<- "                                                                       ";
	t45[2]<- "                                                                       "; 
	t45[3]<- "                                                                       ";
	t45[4]<- "       P u r s u e d      b y     t h e     E m p i r e   s            ";
	t45[5]<- "                                                                       ";
	t45[6]<- "       s i n i s t e r    a g e n t s ,     P r i n c e s s            ";
	t45[7]<- "                                                                       ";
	t45[8]<- "       L e i a   r a c e s   h o m e    a b o a r d   h e r            ";
	t45[9]<- "                                                                       ";
	t45[10]<-"       s t a r s h i p ,   c u s t o d i a n    o f   t h e            ";
	t45[11]<-"                                                                       ";
	t45[12]<-"       s t o l e n   p l a n s    t h a t   c a n   s a v e            ";
	
	
	
	Dimension t46[13];                                                                                                                                             
	t46[0]<- "                                                                       ";
	t46[1]<- "                                                                       "; 
	t46[2]<- "                                                                       ";
	t46[3]<- "       P u r s u e d      b y     t h e     E m p i r e   s            ";
	t46[4]<- "                                                                       ";
	t46[5]<- "       s i n i s t e r    a g e n t s ,     P r i n c e s s            ";
	t46[6]<- "                                                                       ";
	t46[7]<- "       L e i a   r a c e s   h o m e    a b o a r d   h e r            ";
	t46[8]<- "                                                                       ";
	t46[9]<- "       s t a r s h i p ,   c u s t o d i a n    o f   t h e            ";
	t46[10]<-"                                                                       ";
	t46[11]<-"       s t o l e n   p l a n s    t h a t   c a n   s a v e            ";
	t46[12]<-"                                                                       ";
	
	
	Dimension t47[13];                                                                                                                                             
	t47[0]<- "                                                                       "; 
	t47[1]<- "                                                                       ";
	t47[2]<- "       P u r s u e d      b y     t h e     E m p i r e   s            ";
	t47[3]<- "                                                                       ";
	t47[4]<- "       s i n i s t e r    a g e n t s ,     P r i n c e s s            ";
	t47[5]<- "                                                                       ";
	t47[6]<- "       L e i a   r a c e s   h o m e    a b o a r d   h e r            ";
	t47[7]<- "                                                                       ";
	t47[8]<- "       s t a r s h i p ,   c u s t o d i a n    o f   t h e            ";
	t47[9]<- "                                                                       ";
	t47[10]<-"       s t o l e n   p l a n s    t h a t   c a n   s a v e            ";
	t47[11]<-"                                                                       ";
	t47[12]<-"       h e r      p e o p l e      a n d      r e s t o r e            ";
	
	
	Dimension t48[13];                                                                                                                                             
	t48[0]<- "                                                                       ";
	t48[1]<- "       P u r s u e d      b y     t h e     E m p i r e   s            ";
	t48[2]<- "                                                                       ";
	t48[3]<- "       s i n i s t e r    a g e n t s ,     P r i n c e s s            ";
	t48[4]<- "                                                                       ";
	t48[5]<- "       L e i a   r a c e s   h o m e    a b o a r d   h e r            ";
	t48[6]<- "                                                                       ";
	t48[7]<- "       s t a r s h i p ,   c u s t o d i a n    o f   t h e            ";
	t48[8]<- "                                                                       ";
	t48[9]<- "       s t o l e n   p l a n s    t h a t   c a n   s a v e            ";
	t48[10]<-"                                                                       ";
	t48[11]<-"       h e r      p e o p l e      a n d      r e s t o r e            ";
	t48[12]<-"                                                                       ";
	
	
	Dimension t49[13];                                                                                                                                             
	t49[0]<- "       P u r s u e d      b y     t h e     E m p i r e   s            ";
	t49[1]<- "                                                                       ";
	t49[2]<- "       s i n i s t e r    a g e n t s ,     P r i n c e s s            ";
	t49[3]<- "                                                                       ";
	t49[4]<- "       L e i a   r a c e s   h o m e    a b o a r d   h e r            ";
	t49[5]<- "                                                                       ";
	t49[6]<- "       s t a r s h i p ,   c u s t o d i a n    o f   t h e            ";
	t49[7]<- "                                                                       ";
	t49[8]<- "       s t o l e n   p l a n s    t h a t   c a n   s a v e            ";
	t49[9]<- "                                                                       ";
	t49[10]<-"       h e r      p e o p l e      a n d      r e s t o r e            ";
	t49[11]<-"                                                                       ";
	t49[12]<-"       f r e e d o m     t o   t h e     g a l a x y. . . .            ";
	
	
	Dimension t50[13];                                                                                                                                             
	t50[0]<- "                                                                       ";
	t50[1]<- "       s i n i s t e r    a g e n t s ,     P r i n c e s s            ";
	t50[2]<- "                                                                       ";
	t50[3]<- "       L e i a   r a c e s   h o m e    a b o a r d   h e r            ";
	t50[4]<- "                                                                       ";
	t50[5]<- "       s t a r s h i p ,   c u s t o d i a n    o f   t h e            ";
	t50[6]<- "                                                                       ";
	t50[7]<- "       s t o l e n   p l a n s    t h a t   c a n   s a v e            ";
	t50[8]<- "                                                                       ";
	t50[9]<- "       h e r      p e o p l e      a n d      r e s t o r e            ";
	t50[10]<-"                                                                       ";
	t50[11]<-"       f r e e d o m     t o   t h e     g a l a x y. . . .            ";
	t50[12]<-"                                                                       ";
	
	
	Dimension t51[13];                                                                                                                                             
	t51[0]<- "       s i n i s t e r    a g e n t s ,     P r i n c e s s            ";
	t51[1]<- "                                                                       ";
	t51[2]<- "       L e i a   r a c e s   h o m e    a b o a r d   h e r            ";
	t51[3]<- "                                                                       ";
	t51[4]<- "       s t a r s h i p ,   c u s t o d i a n    o f   t h e            ";
	t51[5]<- "                                                                       ";
	t51[6]<- "       s t o l e n   p l a n s    t h a t   c a n   s a v e            ";
	t51[7]<- "                                                                       ";
	t51[8]<- "       h e r      p e o p l e      a n d      r e s t o r e            ";
	t51[9]<- "                                                                       ";
	t51[10]<-"       f r e e d o m     t o   t h e     g a l a x y. . . .            ";
	t51[11]<-"                                                                       ";
	t51[12]<-"                                                                       ";
	
	Dimension t52[13];                                                                                                                                             
	t52[0]<- "                                                                       ";
	t52[1]<- "       L e i a   r a c e s   h o m e    a b o a r d   h e r            ";
	t52[2]<- "                                                                       ";
	t52[3]<- "       s t a r s h i p ,   c u s t o d i a n    o f   t h e            ";
	t52[4]<- "                                                                       ";
	t52[5]<- "       s t o l e n   p l a n s    t h a t   c a n   s a v e            ";
	t52[6]<- "                                                                       ";
	t52[7]<- "       h e r      p e o p l e      a n d      r e s t o r e            ";
	t52[8]<- "                                                                       ";
	t52[9]<- "       f r e e d o m     t o   t h e     g a l a x y. . . .            ";
	t52[10]<-"                                                                       ";
	t52[11]<-"                                                                       ";
	t52[12]<-"                                                                       ";
	
	Dimension t53[13];
	t53[0]<- "       L e i a   r a c e s   h o m e    a b o a r d   h e r            ";
	t53[1]<- "                                                                       ";
	t53[2]<- "       s t a r s h i p ,   c u s t o d i a n    o f   t h e            ";
	t53[3]<- "                                                                       ";
	t53[4]<- "       s t o l e n   p l a n s    t h a t   c a n   s a v e            ";
	t53[5]<- "                                                                       ";
	t53[6]<- "       h e r      p e o p l e      a n d      r e s t o r e            ";
	t53[7]<- "                                                                       ";
	t53[8]<- "       f r e e d o m     t o   t h e     g a l a x y. . . .            ";
	t53[9]<- "                                                                       ";
	t53[10]<-"                                                                       ";
	t53[11]<-"                                                                       ";
	t53[12]<-"                                                                       ";
	
	Dimension t54[13];
	t54[0]<- "                                                                       ";
	t54[1]<- "       s t a r s h i p ,   c u s t o d i a n    o f   t h e            ";
	t54[2]<- "                                                                       ";
	t54[3]<- "       s t o l e n   p l a n s    t h a t   c a n   s a v e            ";
	t54[4]<- "                                                                       ";
	t54[5]<- "       h e r      p e o p l e      a n d      r e s t o r e            ";
	t54[6]<- "                                                                       ";
	t54[7]<- "       f r e e d o m     t o   t h e     g a l a x y. . . .            ";
	t54[8]<- "                                                                       ";
	t54[9]<- "                                                                       ";
	t54[10]<-"                                                                       ";
	t54[11]<-"                                                                       ";
	t54[12]<-"                                                                       ";
	
	Dimension t55[13];
	t55[0]<- "       s t a r s h i p ,   c u s t o d i a n    o f   t h e            ";
	t55[1]<- "                                                                       ";
	t55[2]<- "       s t o l e n   p l a n s    t h a t   c a n   s a v e            ";
	t55[3]<- "                                                                       ";
	t55[4]<- "       h e r      p e o p l e      a n d      r e s t o r e            ";
	t55[5]<- "                                                                       ";
	t55[6]<- "       f r e e d o m     t o   t h e     g a l a x y. . . .            ";
	t55[7]<- "                                                                       ";
	t55[8]<- "                                                                       ";
	t55[9]<- "                                                                       ";
	t55[10]<-"                                                                       ";
	t55[11]<-"                                                                       ";
	t55[12]<-"                                                                       ";
	
	
	Dimension t56[13];
	t56[0]<- "                                                                       ";
	t56[1]<- "       s t o l e n   p l a n s    t h a t   c a n   s a v e            ";
	t56[2]<- "                                                                       ";
	t56[3]<- "       h e r      p e o p l e      a n d      r e s t o r e            ";
	t56[4]<- "                                                                       ";
	t56[5]<- "       f r e e d o m     t o   t h e     g a l a x y. . . .            ";
	t56[6]<- "                                                                       ";
	t56[7]<- "                                                                       ";
	t56[8]<- "                                                                       ";
	t56[9]<- "                                                                       ";
	t56[10]<-"                                                                       ";
	t56[11]<-"                                                                       ";
	t56[12]<-"                                                                       ";
	
	
	Dimension t57[13];
	t57[0]<- "                                                                       ";
	t57[1]<- "       s t o l e n   p l a n s    t h a t   c a n   s a v e            ";
	t57[2]<- "                                                                       ";
	t57[3]<- "       h e r      p e o p l e      a n d      r e s t o r e            ";
	t57[4]<- "                                                                       ";
	t57[5]<- "       f r e e d o m     t o   t h e     g a l a x y. . . .            ";
	t57[6]<- "                                                                       ";
	t57[7]<- "                                                                       ";
	t57[8]<- "                                                                       ";
	t57[9]<- "                                                                       ";
	t57[10]<-"                                                                       ";
	t57[11]<-"                                                                       ";
	t57[12]<-"                                                                       ";
	
	
	Dimension t58[13];
	t58[0]<- "       s t o l e n   p l a n s    t h a t   c a n   s a v e            ";
	t58[1]<- "                                                                       ";
	t58[2]<- "       h e r      p e o p l e      a n d      r e s t o r e            ";
	t58[3]<- "                                                                       ";
	t58[4]<- "       f r e e d o m     t o   t h e     g a l a x y. . . .            ";
	t58[5]<- "                                                                       ";
	t58[6]<- "                                                                       ";
	t58[7]<- "                                                                       ";
	t58[8]<- "                                                                       ";
	t58[9]<- "                                                                       ";
	t58[10]<-"                                                                       ";
	t58[11]<-"                                                                       ";
	t58[12]<-"                                                                       ";
	
	
	Dimension t59[13];
	t59[0]<- "                                                                       ";
	t59[1]<- "       h e r      p e o p l e      a n d      r e s t o r e            ";
	t59[2]<- "                                                                       ";
	t59[3]<- "       f r e e d o m     t o   t h e     g a l a x y. . . .            ";
	t59[4]<- "                                                                       ";
	t59[5]<- "                                                                       ";
	t59[6]<- "                                                                       ";
	t59[7]<- "                                                                       ";
	t59[8]<- "                                                                       ";
	t59[9]<- "                                                                       ";
	t59[10]<-"                                                                       ";
	t59[11]<-"                                                                       ";
	t59[12]<-"                                                                       ";
	
	
	
	Dimension t60[13];
	t60[0]<- "       h e r      p e o p l e      a n d      r e s t o r e            ";
	t60[1]<- "                                                                       ";
	t60[2]<- "       f r e e d o m     t o   t h e     g a l a x y. . . .            ";
	t60[3]<- "                                                                       ";
	t60[4]<- "                                                                       ";
	t60[5]<- "                                                                       ";
	t60[6]<- "                                                                       ";
	t60[7]<- "                                                                       ";
	t60[8]<- "                                                                       ";
	t60[9]<- "                                                                       ";
	t60[10]<-"                                                                       ";
	t60[11]<-"                                                                       ";
	t60[12]<-"                                                                       ";
	
	
	
	Dimension t61[13];
	t61[0]<- "                                                                       ";
	t61[1]<- "       f r e e d o m     t o   t h e     g a l a x y. . . .            ";
	t61[2]<- "                                                                       ";
	t61[3]<- "                                                                       ";
	t61[4]<- "                                                                       ";
	t61[5]<- "                                                                       ";
	t61[6]<- "                                                                       ";
	t61[7]<- "                                                                       ";
	t61[8]<- "                                                                       ";
	t61[9]<- "                                                                       ";
	t61[10]<-"                                                                       ";
	t61[11]<-"                                                                       ";
	t61[12]<-"                                                                       ";
	
	
	Dimension t62[13];
	t62[0]<- "       f r e e d o m     t o   t h e     g a l a x y. . . .            ";
	t62[1]<- "                                                                       ";
	t62[2]<- "                                                                       ";
	t62[3]<- "                                                                       ";
	t62[4]<- "                                                                       ";
	t62[5]<- "                                                                       ";
	t62[6]<- "                                                                       ";
	t62[7]<- "                                                                       ";
	t62[8]<- "                                                                       ";
	t62[9]<- "                                                                       ";
	t62[10]<-"                                                                       ";
	t62[11]<-"                                                                       ";
	t62[12]<-"                                                                       ";
	
	
	
	Dimension t63[13];
	t63[0]<- "                                                                       ";
	t63[1]<- "                                                                       ";
	t63[2]<- "                                                                       ";
	t63[3]<- "                                                                       ";
	t63[4]<- "                                                                       ";
	t63[5]<- "                                                                       ";
	t63[6]<- "                                                                       ";
	t63[7]<- "                                                                       ";
	t63[8]<- "                                                                       ";
	t63[9]<- "                                                                       ";
	t63[10]<-"                                                                       ";
	t63[11]<-"                                                                       ";
	t63[12]<-"                                                                       ";
	
	
	
	Dimension g1[13];
	g1[0]<- "        .       .       .             .            .            .        ";
	g1[1]<- "                              .                                          ";
	g1[2]<- "            .       8888888                                              ";
	g1[3]<- "                  88888888888        .     .                .            ";
	g1[4]<- "         .       8888888888888                                           ";
	g1[5]<- "                888888888888888    .                 .                .  ";
	g1[6]<- "                888888888888888                                          ";
	g1[7]<- "              .  8888888888888              .       .        .           ";
	g1[8]<- "       .          88888888888                                            ";
	g1[9]<- "             .      8888888   .           .                      .       ";
	g1[10]<-"                                   .            .                      . ";
	g1[11]<-"         .           .                                       .           ";
	g1[12]<-"              .             .              .          .                  ";
	
	
	
	Dimension g2[13];
	g2[0]<- "                              .                                          ";
	g2[1]<- "            .       8888888                                              ";
	g2[2]<- "                  88888888888        .     .                .            ";
	g2[3]<- "         .       8888888888888                                           ";
	g2[4]<- "                888888888888888    .                 .                .  ";
	g2[5]<- "                888888888888888                                          ";
	g2[6]<- "              .  8888888888888              .       .        .           ";
	g2[7]<- "       .          88888888888                                            ";
	g2[8]<- "             .      8888888   .           .                      .       ";
	g2[9]<- "                                   .            .                      . ";
	g2[10]<-"         .           .                                       .           ";
	g2[11]<-"              .             .              .          .                  ";
	g2[12]<-"                                                                         ";
	
	
	Dimension g3[13];
	g3[0]<- "            .       8888888                                              ";
	g3[1]<- "                  88888888888        .     .                .            ";
	g3[2]<- "         .       8888888888888                                           ";
	g3[3]<- "                888888888888888    .                 .                .  ";
	g3[4]<- "                888888888888888                                          ";
	g3[5]<- "              .  8888888888888              .       .        .           ";
	g3[6]<- "       .          88888888888                                            ";
	g3[7]<- "             .      8888888   .           .                      .       ";
	g3[8]<- "                                   .            .                      . ";
	g3[9]<- "         .           .                                       .           ";
	g3[10]<-"              .             .              .          .                  ";
	g3[11]<-"                                                                         ";
	g3[12]<-"                       .            .                              .     ";
	
	
	
	Dimension g4[13];
	g4[0]<- "                  88888888888        .     .                .            ";
	g4[1]<- "         .       8888888888888                                           ";
	g4[2]<- "                888888888888888    .                 .                .  ";
	g4[3]<- "                888888888888888                                          ";
	g4[4]<- "              .  8888888888888              .       .        .           ";
	g4[5]<- "       .          88888888888                                            ";
	g4[6]<- "             .      8888888   .           .                      .       ";
	g4[7]<- "                                   .            .                      . ";
	g4[8]<- "         .           .                                       .           ";
	g4[9]<- "              .             .              .          .                  ";
	g4[10]<-"                                                                         ";
	g4[11]<-"                       .            .                              .     "; 
	g4[12]<-"                                                                         ";
	
	
	
	Dimension g5[13];
	g5[0]<- "         .       8888888888888                                           ";
	g5[1]<- "                888888888888888    .                 .                .  ";
	g5[2]<- "                888888888888888                                          ";
	g5[3]<- "              .  8888888888888              .       .        .           ";
	g5[4]<- "       .          88888888888                                            ";
	g5[5]<- "             .      8888888   .           .                      .       ";
	g5[6]<- "                                   .            .                      . ";
	g5[7]<- "         .           .                                       .           ";
	g5[8]<- "              .             .              .          .                  ";
	g5[9]<- "                                                                         ";
	g5[10]<-"                       .            .                              .     "; 
	g5[11]<-"                                                                         ";
	g5[12]<-"           .                                       .                     ";
	
	
	
	Dimension g6[13];
	g6[0]<- "                888888888888888    .                 .                .  ";
	g6[1]<- "                888888888888888                                          ";
	g6[2]<- "              .  8888888888888              .       .        .           ";
	g6[3]<- "       .          88888888888                                            ";
	g6[4]<- "             .      8888888   .           .                      .       ";
	g6[5]<- "                                   .            .                      . ";
	g6[6]<- "         .           .                                       .           ";
	g6[7]<- "              .             .              .          .                  ";
	g6[8]<- "                                                                         ";
	g6[9]<- "                       .            .                              .     "; 
	g6[10]<-"                                                                         ";
	g6[11]<-"           .                                       .                     ";
	g6[12]<-"                                                                         ";
	
	
	
	Dimension g7[13];
	g7[0]<- "                888888888888888                                          ";
	g7[1]<- "              .  8888888888888              .       .        .           ";
	g7[2]<- "       .          88888888888                                            ";
	g7[3]<- "             .      8888888   .           .                      .       ";
	g7[4]<- "                                   .            .                      . ";
	g7[5]<- "         .           .                                       .           ";
	g7[6]<- "              .             .              .          .                  ";
	g7[7]<- "                                                                         ";
	g7[8]<- "                       .            .                              .     "; 
	g7[9]<- "                                                                         ";
	g7[10]<-"           .                                       .                     ";
	g7[11]<-"                                                                         ";
	g7[12]<-"                                                                         ";
	
	
	
	Dimension g8[13];
	g8[0]<- "              .  8888888888888              .       .        .           ";
	g8[1]<- "       .          88888888888                                            ";
	g8[2]<- "             .      8888888   .           .                      .       ";
	g8[3]<- "                                   .            .                      . ";
	g8[4]<- "         .           .                                       .           ";
	g8[5]<- "              .             .              .          .                  ";
	g8[6]<- "                                                                         ";
	g8[7]<- "                       .            .                              .     "; 
	g8[8]<- "                                                                         ";
	g8[9]<- "           .                                       .                     ";
	g8[10]<-"                                                                         ";
	g8[11]<-"                                                                         ";
	g8[12]<-"                                                                         ";
	
	
	
	Dimension g9[13];
	g9[0]<- "       .          88888888888                                            ";
	g9[1]<- "             .      8888888   .           .                      .       ";
	g9[2]<- "                                   .            .                      . ";
	g9[3]<- "         .           .                                       .           ";
	g9[4]<- "              .             .              .          .                  ";
	g9[5]<- "                                                                         ";
	g9[6]<- "                       .            .                              .     "; 
	g9[7]<- "                                                                         ";
	g9[8]<- "           .                                       .                     ";
	g9[9]<- "                                                                         ";
	g9[10]<-"                                                                         ";
	g9[11]<-"                                                                         ";
	g9[12]<-"                                                                         ";
	
	
	
	Dimension g10[13];
	g10[0]<- "             .      8888888   .           .                      .       ";
	g10[1]<- "                                   .            .                      . ";
	g10[2]<- "         .           .                                       .           ";
	g10[3]<- "              .             .              .          .                  ";
	g10[4]<- "                                                                         ";
	g10[5]<- "                       .            .                              .     "; 
	g10[6]<- "                                                                         ";
	g10[7]<- "           .                                       .                     ";
	g10[8]<- "                                                                         ";
	g10[9]<- "                                                                         ";
	g10[10]<-"                                                                         ";
	g10[11]<-"                                                                         ";
	g10[12]<-"                                                                         ";
	
	
	
	Dimension g11[13];
	g11[0]<- "                                   .            .                      . ";
	g11[1]<- "         .           .                                       .           ";
	g11[2]<- "              .             .              .          .                  ";
	g11[3]<- "                                                                         ";
	g11[4]<- "                       .            .                              .     "; 
	g11[5]<- "                                                                         ";
	g11[6]<- "           .                                       .                     ";
	g11[7]<- "                                                                         ";
	g11[8]<- "                                                                         ";
	g11[9]<- "                                                                         ";
	g11[10]<-"                                                                         ";
	g11[11]<-"                                                                         ";
	g11[12]<-"                                                                         ";
	
	
	
	Dimension g12[13];
	g12[0]<- "         .           .                                       .           ";
	g12[1]<- "              .             .              .          .                  ";
	g12[2]<- "                                                                         ";
	g12[3]<- "                       .            .                              .     "; 
	g12[4]<- "                                                                         ";
	g12[5]<- "           .                                       .                     ";
	g12[6]<- "                                                                         ";
	g12[7]<- "                                                                         ";
	g12[8]<- "                                                                         ";
	g12[9]<- "                                                                         ";
	g12[10]<-"                                                                         ";
	g12[11]<-"                                                                         ";
	g12[12]<-"                                                                         ";
	
	
	
	Dimension g13[13];
	g13[0]<- "              .             .              .          .                  ";
	g13[1]<- "                                                                         ";
	g13[2]<- "                       .            .                              .     "; 
	g13[3]<- "                                                                         ";
	g13[4]<- "           .                                       .                     ";
	g13[5]<- "                                                                         ";
	g13[6]<- "                                                                         ";
	g13[7]<- "                                                                         ";
	g13[8]<- "                                                                         ";
	g13[9]<- "                                                                         ";
	g13[10]<-"                                                                         ";
	g13[11]<-"                                                                         ";
	g13[12]<-"                                                                         ";
	
	
	
	Dimension g14[13];
	g14[0]<- "                                                                         ";
	g14[1]<- "                       .            .                              .     "; 
	g14[2]<- "                                                                         ";
	g14[3]<- "           .                                       .                     ";
	g14[4]<- "                                                                         ";
	g14[5]<- "                                                                         ";
	g14[6]<- "                                                                         ";
	g14[7]<- "                                                                         ";
	g14[8]<- "                                                                         ";
	g14[9]<- "                                                                         ";
	g14[10]<-"                                                                         ";
	g14[11]<-"                                                                         ";
	g14[12]<-"                                                                         ";
	
	
	
	Dimension g15[13];
	g15[0]<- "                       .            .                              .     "; 
	g15[1]<- "                                                                         ";
	g15[2]<- "           .                                       .                     ";
	g15[3]<- "                                                                         ";
	g15[4]<- "                                                                         ";
	g15[5]<- "                                                                         ";
	g15[6]<- "                                                                         ";
	g15[7]<- "                                                                         ";
	g15[8]<- "                                                                         ";
	g15[9]<- "                                                                         ";
	g15[10]<-"                                                                         ";
	g15[11]<-"                                                                         ";
	g15[12]<-"                                                                         ";
	
	
	
	Dimension g16[13];
	g16[0]<- "                                                                         ";
	g16[1]<- "           .                                       .                     ";
	g16[2]<- "                                                                         ";
	g16[3]<- "                                                                         ";
	g16[4]<- "                                                                         ";
	g16[5]<- "                                                                         ";
	g16[6]<- "                                                                         ";
	g16[7]<- "                                                                         ";
	g16[8]<- "                                                                         ";
	g16[9]<- "                                                                         ";
	g16[10]<-"                                                                         ";
	g16[11]<-"                                                                         ";
	g16[12]<-"                                                                         ";
	
	
	Dimension g17[13];
	g17[0]<- "                                                                         ";
	g17[1]<- "           .                                       .                     ";
	g17[2]<- "                                                                         ";
	g17[3]<- "                                                                         ";
	g17[4]<- "                                                                         ";
	g17[5]<- "                                                                         ";
	g17[6]<- "                                                                         ";
	g17[7]<- "                                                                         ";
	g17[8]<- "                                                                         ";
	g17[9]<- "                                                                         ";
	g17[10]<-"                                                                         ";
	g17[11]<-"                                                                         ";
	g17[12]<-"                                                                         ";
	
	
	Dimension g18[13];
	g18[0]<- "                                                                         ";
	g18[1]<- "           .                                       .                     ";
	g18[2]<- "                                                                         ";
	g18[3]<- "                                                                         ";
	g18[4]<- "                                                                         ";
	g18[5]<- "                                                                         ";
	g18[6]<- "                                                                         ";
	g18[7]<- "                                                                         ";
	g18[8]<- "                                                                         ";
	g18[9]<- "                                                                         ";
	g18[10]<-"                                                                         ";
	g18[11]<-"                                                                         ";
	g18[12]<-"                                                                         ";
	
	
	
	Dimension g19[13];
	g19[0]<- "           .                                       .                     ";
	g19[1]<- "                                                                         ";
	g19[2]<- "                                                                         ";
	g19[3]<- "                                                                         ";
	g19[4]<- "                                                                         ";
	g19[5]<- "                                                                         ";
	g19[6]<- "                                                                         ";
	g19[7]<- "                                                                         ";
	g19[8]<- "                                                                         ";
	g19[9]<- "                                                                         ";
	g19[10]<-"                                                                         ";
	g19[11]<-"                                                                         ";
	g19[12]<-"                                                                         ";
	
	
	
	Dimension g20[13];
	g20[0]<- "                                                                         ";
	g20[1]<- "                                                                         ";
	g20[2]<- "                                                                         ";
	g20[3]<- "                                                                         ";
	g20[4]<- "                                                                         ";
	g20[5]<- "                                                                         ";
	g20[6]<- "                                                                         ";
	g20[7]<- "                                                                         ";
	g20[8]<- "                                                                         ";
	g20[9]<- "                                                                         ";
	g20[10]<-"                                                                         ";
	g20[11]<-"                                                                         ";
	g20[12]<-"                                                                         ";
	
	
	
	Dimension g21[13];
	g21[0]<- "                                                                         ";
	g21[1]<- "                                                                         ";
	g21[2]<- "                                                                         ";
	g21[3]<- "                                                                         ";
	g21[4]<- "                                                                         ";
	g21[5]<- "                                                                         ";
	g21[6]<- "                                                                         ";
	g21[7]<- "                                                                         ";
	g21[8]<- "                                                                         ";
	g21[9]<- "                                                                         ";
	g21[10]<-"                                                                         ";
	g21[11]<-"                                                                         ";
	g21[12]<-"                                                                         ";
	
	dimension j1[13];
	j1[0]<-"                                                                                  ";
	j1[1]<-"                                                                                  ";
	j1[2]<-"                                                                                  ";
	j1[3]<-"                                                                                  ";
	j1[4]<-"                                                                                  ";
	j1[5]<-"                                                                                  ";
	j1[6]<-"                                                                                  ";
	j1[7]<-"                                                                                  ";
	j1[8]<-"                                                                                  ";
	j1[9]<-"                                                                        O         ";
	j1[10]<-"                                                                                 "; 
	j1[11]<-"                                                                                 "; 
	j1[12]<-"                                                                                 ";
	
	
	
	dimension j2[13];																
	j2[0]<-"                                                                                  ";
	j2[1]<-"                                                                                  ";
	j2[2]<-"                                                                                  ";
	j2[3]<-"                                                                                  ";
	j2[4]<-"                                                                                  ";
	j2[5]<-"                                                                                  ";
	j2[6]<-"                                                                                  ";
	j2[7]<-"                                                                                  ";
	j2[8]<-"                                                                                  ";
	j2[9]<-"                                                                       O=         ";
	j2[10]<-"                                                                                 ";
	j2[11]<-"                                                                                 ";
	j2[12]<-"                                                                                 ";
	
	
	Dimension j3[13];
	j3[0]<-"                                                                                  ";
	j3[1]<-"                                                                                  ";
	j3[2]<-"                                                                                  ";
	j3[3]<-"                                                                                  ";
	j3[4]<-"                                                                                  ";
	j3[5]<-"                                                                                  ";
	j3[6]<-"                                                                                  ";
	j3[7]<-"                                                                                  ";
	j3[8]<-"                                                                                  ";
	j3[9]<-"                                                                      O=<         ";
	j3[10]<-"                                                                                 ";
	j3[11]<-"                                                                                 ";
	j3[12]<-"                                                                                 ";
	
	
	Dimension j4[13];                                                             																
	j4[0]<-"                                                                                  ";
	j4[1]<-"                                                                                  ";
	j4[2]<-"                                                                                  ";
	j4[3]<-"                                                                                  ";
	j4[4]<-"                                                                                  ";
	j4[5]<-"                                                                                  ";
	j4[6]<-"                                                                                  ";
	j4[7]<-"                                                                                  ";
	j4[8]<-"                                                                                  ";
	j4[9]<-"                                                                     O=<8         ";
	j4[10]<-"                                                                                 ";
	j4[11]<-"                                                                                 ";
	j4[12]<-"                                                                                 ";
	
	
	Dimension j5[13];                                                             
	j5[0]<-"                                                                                  ";
	j5[1]<-"                                                                                  ";
	j5[2]<-"                                                                                  ";
	j5[3]<-"                                                                                  ";
	j5[4]<-"                                                                                  ";
	j5[5]<-"                                                                                  ";
	j5[6]<-"                                                                                  ";
	j5[7]<-"                                                                                  "; 
	j5[8]<-"                                                                                  "; 
	j5[9]<-"                                                                    O=<88         ";
	j5[10]<-"                                                                                 ";
	j5[11]<-"                                                                                 ";
	j5[12]<-"                                                                                 ";
	
	
	Dimension j6[13];                                                             
	j6[0]<-"                                                                                  ";
	j6[1]<-"                                                                                  ";
	j6[2]<-"                                                                                  ";
	j6[3]<-"                                                                                  ";
	j6[4]<-"                                                                                  ";
	j6[5]<-"                                                                                  ";
	j6[6]<-"                                                                                  ";
	j6[7]<-"                                                                                  "; 
	j6[8]<-"                                                                                  "; 
	j6[9]<-"                                                                    O=<88>        ";
	j6[10]<-"                                                                                 ";
	j6[11]<-"                                                                                 ";
	j6[12]<-"                                                                                 ";  
	
	
	Dimension j7[13];                                                             
	j7[0]<-"                                                                                  ";
	j7[1]<-"                                                                                  ";
	j7[2]<-"                                                                                  ";
	j7[3]<-"                                                                                  ";
	j7[4]<-"                                                                                  ";
	j7[5]<-"                                                                                  ";
	j7[6]<-"                                                                                  ";
	j7[7]<-"                                                                                  "; 
	j7[8]<-"                                                                                  "; 
	j7[9]<-"                                                                    O=<88>=       ";
	j7[10]<-"                                                                                 ";
	j7[11]<-"                                                                                 ";
	j7[12]<-"                                                                                 ";
	
	
	Dimension j8[13];                                                             
	j8[0]<-"                                                                                  ";
	j8[1]<-"                                                                                  ";
	j8[2]<-"                                                                                  ";
	j8[3]<-"                                                                                  ";
	j8[4]<-"                                                                                  ";
	j8[5]<-"                                                                                  ";
	j8[6]<-"                                                                                  ";
	j8[7]<-"                                                                                  "; 
	j8[8]<-"                                                                                  "; 
	j8[9]<-"                                                                    O=<88>=0      ";
	j8[10]<-"                                                                                 ";
	j8[11]<-"                                                                                 ";
	j8[12]<-"                                                                                 ";
	
	
	
	Dimension j9[13];                                                             
	j9[0]<-"                                                                                  ";
	j9[1]<-"                                                                                  ";
	j9[2]<-"                                                                                  ";
	j9[3]<-"                                                                                  ";
	j9[4]<-"                                                                                  ";
	j9[5]<-"                                                                                  ";
	j9[6]<-"                                                                                  ";
	j9[7]<-"                                                                                  "; 
	j9[8]<-"                                                                                  "; 
	j9[9]<-"                                                                    O=<88>=0<     ";
	j9[10]<-"                                                                                 ";
	j9[11]<-"                                                                                 ";
	j9[12]<-"                                                                                 ";
	
	
	Dimension j10[13];                                                             
	j10[0]<-"                                                                                 ";
	j10[1]<-"                                                                                 ";
	j10[2]<-"                                                                                 ";
	j10[3]<-"                                                                                 ";
	j10[4]<-"                                                                                 ";
	j10[5]<-"                                                                                 ";
	j10[6]<-"                                                                                 ";
	j10[7]<-"                                                                                 "; 
	j10[8]<-"                                                                                 "; 
	j10[9]<-"                                                               O=<88>=0<E        ";
	j10[10]<-"                                                                                ";
	j10[11]<-"                                                                                ";
	j10[12]<-"                                                                                ";
	
	
	
	Dimension j11[13];                                                             
	j11[0]<-"                                                                                 ";
	j11[1]<-"                                                                                 ";
	j11[2]<-"                                                                                 ";
	j11[3]<-"                                                                                 ";
	j11[4]<-"                                                                                 ";
	j11[5]<-"                                                                                 ";
	j11[6]<-"                                                                                 ";
	j11[7]<-"                                                                                 "; 
	j11[8]<-"                                                                                 "; 
	j11[9]<-"                                                               O=<88>=0<E        ";
	j11[10]<-"                                                                                ";
	j11[11]<-"                                                                                ";
	j11[12]<-"                                                                                ";
	
	
	Dimension j12[13];                                                             
	j12[0]<-"                                                                                 ";
	j12[1]<-"                                                                                 ";
	j12[2]<-"                                                                                 ";
	j12[3]<-"                                                                                 ";
	j12[4]<-"                                                                                 ";
	j12[5]<-"                                                                                 ";
	j12[6]<-"                                                                                 ";
	j12[7]<-"                                                                                 "; 
	j12[8]<-"                                                                                 "; 
	j12[9]<-"                                                         <88>=0<E                ";
	j12[10]<-"                                                                                ";
	j12[11]<-"                                                                                ";
	j12[12]<-"                                                                                "; 
	
	
	Dimension j13[13];                                                             
	j13[0]<-"                                                                         ";
	j13[1]<-"                                                                         ";
	j13[2]<-"                                                                         ";
	j13[3]<-"                                                                         ";
	j13[4]<-"                                                                         ";
	j13[5]<-"                                                                         ";
	j13[6]<-"                                                                         ";
	j13[7]<-"                                                                         "; 
	j13[8]<-"                                                                         "; 
	j13[9]<-"                                                               O=<88>=0<E";
	j13[10]<-"                                                                        ";
	j13[11]<-"                                                                        ";
	j13[12]<-"                                                                        ";
	
	
	Dimension j14[13];                                                             
	j14[0]<-"                                                                         ";
	j14[1]<-"                                                                         ";
	j14[2]<-"                                                                         ";
	j14[3]<-"                                                                         ";
	j14[4]<-"                                                                         ";
	j14[5]<-"                                                                         ";
	j14[6]<-"                                                                         ";
	j14[7]<-"                                                                         "; 
	j14[8]<-"                                                                         "; 
	j14[9]<-"                                                               O=<88>=0<E";
	j14[10]<-"                                                                        ";
	j14[11]<-"                                                                        ";
	j14[12]<-"                                                                        ";
	
	
	
	
	
	Dimension j15[13];                                                             
	j15[0]<-"                                                                         ";
	j15[1]<-"                                                                         ";
	j15[2]<-"                                                                         ";
	j15[3]<-"                                                                         ";
	j15[4]<-"                                                                         ";
	j15[5]<-"                                                                         ";
	j15[6]<-"                                                                         ";
	j15[7]<-"                                                                         "; 
	j15[8]<-"                                                                         "; 
	j15[9]<-"                                                               O=<88>=0<E";
	j15[10]<-"                                                                        ";
	j15[11]<-"                                                                        ";
	j15[12]<-"                                                                        ";
	
	
	Dimension j16[13];                                                             
	j16[0]<-"                                                                         ";
	j16[1]<-"                                                                         ";
	j16[2]<-"                                                                         ";
	j16[3]<-"                                                                         ";
	j16[4]<-"                                                                         ";
	j16[5]<-"                                                                         ";
	j16[6]<-"                                                                         ";
	j16[7]<-"                                                                         "; 
	j16[8]<-"                                                                         "; 
	j16[9]<-"                                                               O=<88>=0<E";
	j16[10]<-"                                                                        ";
	j16[11]<-"                                                                        ";
	j16[12]<-"                                                                        ";
	
	
	Dimension j17[13];                                                             
	j17[0]<-"                                                                         ";
	j17[1]<-"                                                                         ";
	j17[2]<-"                                                                         ";
	j17[3]<-"                                                                         ";
	j17[4]<-"                                                                         ";
	j17[5]<-"                                                                         ";
	j17[6]<-"                                                                         ";
	j17[7]<-"                                                                         "; 
	j17[8]<-"                                                                         "; 
	j17[9]<-"                                                               O=<88>=0<E";
	j17[10]<-"                                                                        ";
	j17[11]<-"                                                                        ";
	j17[12]<-"                                                                        ";
	
	
	Dimension j18[13];                                                             
	j18[0]<-"                                                                         ";
	j18[1]<-"                                                                         ";
	j18[2]<-"                                                                         ";
	j18[3]<-"                                                                         ";
	j18[4]<-"                                                                         ";
	j18[5]<-"                                                                         ";
	j18[6]<-"                                                                         ";
	j18[7]<-"                                                                         "; 
	j18[8]<-"                                                                         "; 
	j18[9]<-"                                                               O=<88>=0<E";
	j18[10]<-"                                                                        ";
	j18[11]<-"                                                                        ";
	j18[12]<-"                                                                        ";
	
	
	
	Dimension j19[13];                                                             
	j19[0]<-"                                                                         ";
	j19[1]<-"                                                                         ";
	j19[2]<-"                                                                         ";
	j19[3]<-"                                                                         ";
	j19[4]<-"                                                                         ";
	j19[5]<-"                                                                         ";
	j19[6]<-"                                                                         ";
	j19[7]<-"                                                                         "; 
	j19[8]<-"                                                                         "; 
	j19[9]<-"                                                               O=<88>=0<E";
	j19[10]<-"                                                                        ";
	j19[11]<-"                                                                        ";
	j19[12]<-"                                                                        ";
	
	
	
	Dimension j20[13];                                                             
	j20[0]<-"                                                                                  ";
	j20[1]<-"                                                                                  ";
	j20[2]<-"                                                                                  ";
	j20[3]<-"                                                                                  ";
	j20[4]<-"                                                                                  ";
	j20[5]<-"                                                                                  ";
	j20[6]<-"                                                                                  ";
	j20[7]<-"                                                                                  "; 
	j20[8]<-"                                                                                  "; 
	j20[9]<-"                                                                    O=<88>=0<E     ";
	j20[10]<- "                                                                                 ";
	j20[11]<-"                                                                                 ";
	j20[12]<-"                                                                                 ";
	
	
	
	Dimension j21[13];                                                             
	j21[0]<-"                                                                                  ";
	j21[1]<-"                                                                                  ";
	j21[2]<-"                                                                                  ";
	j21[3]<-"                                                                                  ";
	j21[4]<-"                                                                                  ";
	j21[5]<-"                                                                                  ";
	j21[6]<-"                                                                                  ";
	j21[7]<-"                                                                                  "; 
	j21[8]<-"                                                                                  "; 
	j21[9]<-"                                                                    O=<88>=0<E    ";
	j21[10]<-"                                                                                 ";
	j21[11]<-"                                                                                 ";
	j21[12]<-"                                                                                 ";
	
	
	
	Dimension j22[13];                                                             
	j22[0]<-"                                                                                  ";
	j22[1]<-"                                                                                  ";
	j22[2]<-"                                                                                  ";
	j22[3]<-"                                                                                  ";
	j22[4]<-"                                                                                  ";
	j22[5]<-"                                                                                  ";
	j22[6]<-"                                                                                  ";
	j22[7]<-"                                                                                  "; 
	j22[8]<-"                                                                                  "; 
	j22[9]<-"                                                                    O=<88>=0<E    ";
	j22[10]<-"                                                                                 ";
	j22[11]<-"                                                                                 ";
	j22[12]<-"                                                                                 ";
	
	
	Dimension j23[13];                                                             
	j23[0]<-"                                                                                  ";
	j23[1]<-"                                                                                  ";
	j23[2]<-"                                                                                  ";
	j23[3]<-"                                                                                  ";
	j23[4]<-"                                                                                  ";
	j23[5]<-"                                                                                  ";
	j23[6]<-"                                                                                  ";
	j23[7]<-"                                                                                  "; 
	j23[8]<-"                                                                                  "; 
	j23[9]<-"                                                                    O=<88>=0<E    ";
	j23[10]<-"                                                                                 ";
	j23[11]<-"                                                                                 ";
	j23[12]<-"                                                                                 ";
	
	
	Dimension j24[13];                                                             
	j24[0]<-"                                                                                  ";
	j24[1]<-"                                                                                  ";
	j24[2]<-"                                                                                  ";
	j24[3]<-"                                                                                  ";
	j24[4]<-"                                                                                  ";
	j24[5]<-"                                                                                  ";
	j24[6]<-"                                                                                  ";
	j24[7]<-"                                                                                  "; 
	j24[8]<-"                                                                                  "; 
	j24[9]<-"                                                                    O=<88>=0<E    ";
	j24[10]<-"                                                                                 ";
	j24[11]<-"                                                                                 ";
	j24[12]<-"                                                                                 ";
	
	
	Dimension j25[13];                                                             
	j25[0]<-"                                                                                  ";
	j25[1]<-"                                                                                  ";
	j25[2]<-"                                                                                  ";
	j25[3]<-"                                                                                  ";
	j25[4]<-"                                                                                  ";
	j25[5]<-"                                                                                  ";
	j25[6]<-"                                                                                  ";
	j25[7]<-"                                                                                  "; 
	j25[8]<-"                                                                                  "; 
	j25[9]<-"                                                                    O=<88>=0<E    ";
	j25[10]<-"                                                                                 ";
	j25[11]<-"                                                                                 ";
	j25[12]<-"                                                                                 ";
	
	
	
	Dimension j26[13];                                                             
	j26[0]<-"                                                                                  ";
	j26[1]<-"                                                                                  ";
	j26[2]<-"                                                                                  ";
	j26[3]<-"                                                                                  ";
	j26[4]<-"                                                                                  ";
	j26[5]<-"                                                                                  ";
	j26[6]<-"                                                                                  ";
	j26[7]<-"                                                                                  "; 
	j26[8]<-"                                                                                  "; 
	j26[9]<-"                                                                    O=<88>=0<E    ";
	j26[10]<-"                                                                                 ";
	j26[11]<-"                                                                                 ";
	j26[12]<-"                                                                                 ";
	
	
	
	Dimension j27[13];                                                             
	j27[0]<-"                                                                                  ";
	j27[1]<-"                                                                                  ";
	j27[2]<-"                                                                                  ";
	j27[3]<-"                                                                                  ";
	j27[4]<-"                                                                                  ";
	j27[5]<-"                                                                                  ";
	j27[6]<-"                                                                                  ";
	j27[7]<-"                                                                                  "; 
	j27[8]<-"                                                                                  "; 
	j27[9]<-"                                                                    O=<88>=0<E    ";
	j27[10]<-"                                                                                 ";
	j27[11]<-"                                                                                 ";
	j27[12]<-"                                                                                 ";
	
	
	
	Dimension j28[13];                                                             
	j28[0]<-"                                                                                  ";
	j28[1]<-"                                                                                  ";
	j28[2]<-"                                                                                  ";
	j28[3]<-"                                                                                  ";
	j28[4]<-"                                                                                  ";
	j28[5]<-"                                                                                  ";
	j28[6]<-"                                                                                  ";
	j28[7]<-"                                                                                  "; 
	j28[8]<-"                                                                                  "; 
	j28[9]<-"                                                                    O=<88>=0<E    ";
	j28[10]<-"                                                                                 ";
	j28[11]<-"                                                                                 ";
	j28[12]<-"                                                                                 ";
	
	
	Dimension j29[13];                                                             
	j29[0]<-"                                                                                  ";
	j29[1]<-"                                                                                  ";
	j29[2]<-"                                                                                  ";
	j29[3]<-"                                                                                  ";
	j29[4]<-"                                                                                  ";
	j29[5]<-"                                                                                  ";
	j29[6]<-"                                                                                  ";
	j29[7]<-"                                                                                  "; 
	j29[8]<-"                                                                                  "; 
	j29[9]<-"                                                                    O=<88>=0<E    ";
	j29[10]<-"                                                                                 ";
	j29[11]<-"                                                                                 ";
	j29[12]<-"                                                                                 ";
	
	
	Dimension j30[13];                                                             
	j30[0]<-"                                                                                  ";
	j30[1]<-"                                                                                  ";
	j30[2]<-"                                                                                  ";
	j30[3]<-"                                                                                  ";
	j30[4]<-"                                                                                  ";
	j30[5]<-"                                                                                  ";
	j30[6]<-"                                                                                  ";
	j30[7]<-"                                                                                  "; 
	j30[8]<-"                                                                                  "; 
	j30[9]<-"                                                                    O=<88>=0<E    ";
	j30[10]<-"                                                                                 ";
	j30[11]<-"                                                                                 ";
	j30[12]<-"                                                                                 ";
	
	
	
	Dimension j31[13];                                                             
	j31[0]<-"                                                                                  ";
	j31[1]<-"                                                                                  ";
	j31[2]<-"                                                                                  ";
	j31[3]<-"                                                                                  ";
	j31[4]<-"                                                                                  ";
	j31[5]<-"                                                                                  ";
	j31[6]<-"                                                                                  ";
	j31[7]<-"                                                                                  "; 
	j31[8]<-"                                                                                  "; 
	j31[9]<-"                                                                    O=<88>=0<E    ";
	j31[10]<-"                                                                                 ";
	j31[11]<-"                                                                                 ";
	j31[12]<-"                                                                                 ";
	
	
	Dimension j32[13];                                                             
	j32[0]<-"                                                                                  ";
	j32[1]<-"                                                                                  ";
	j32[2]<-"                                                                                  ";
	j32[3]<-"                                                                                  ";
	j32[4]<-"                                                                                  ";
	j32[5]<-"                                                                                  ";
	j32[6]<-"                                                                                  ";
	j32[7]<-"                                                                                  "; 
	j32[8]<-"                                                                                  "; 
	j32[9]<-"                                                                    O=<88>=0<E    ";
	j32[10]<-"                                                                                 ";
	j32[11]<-"                                                                                 ";
	j32[12]<-"                                                                                 ";
	
	
	Dimension j33[13];                                                             
	j33[0]<-"                                                                                  ";
	j33[1]<-"                                                                                  ";
	j33[2]<-"                                                                                  ";
	j33[3]<-"                                                                                  ";
	j33[4]<-"                                                                                  ";
	j33[5]<-"                                                                                  ";
	j33[6]<-"                                                                                  ";
	j33[7]<-"                                                                                  "; 
	j33[8]<-"                                                                                  "; 
	j33[9]<-"                                                                    O=<88>=0<E    ";
	j33[10]<-"                                                                                 ";
	j33[11]<-"                                                                                 ";
	j33[12]<-"                                                                                 ";
	
	
	Dimension j34[13];                                                             
	j34[0]<-"                                                                                  ";
	j34[1]<-"                                                                                  ";
	j34[2]<-"                                                                                  ";
	j34[3]<-"                                                                                  ";
	j34[4]<-"                                                                                  ";
	j34[5]<-"                                                                                  ";
	j34[6]<-"                                                                                  ";
	j34[7]<-"                                                                                  "; 
	j34[8]<-"                                                                                  "; 
	j34[9]<-"                                                                    O=<88>=0<E    ";
	j34[10]<-"                                                                                 ";
	j34[11]<-"                                                                                 ";
	j34[12]<-"                                                                                 ";
	
	
	Dimension j35[13];                                                             
	j35[0]<-"                                                                                  ";
	j35[1]<-"                                                                                  ";
	j35[2]<-"                                                                                  ";
	j35[3]<-"                                                                                  ";
	j35[4]<-"                                                                                  ";
	j35[5]<-"                                                                                  ";
	j35[6]<-"                                                                                  ";
	j35[7]<-"                                                                                  "; 
	j35[8]<-"                                                                                  "; 
	j35[9]<-"                                                                    O=<88>=0<E    ";
	j35[10]<-"                                                                                 ";
	j35[11]<-"                                                                                 ";
	j35[12]<-"                                                                                 ";
	
	
	Dimension j36[13];                                                             
	j36[0]<-"                                                                                  ";
	j36[1]<-"                                                                                  ";
	j36[2]<-"                                                                                  ";
	j36[3]<-"                                                                                  ";
	j36[4]<-"                                                                                  ";
	j36[5]<-"                                                                                  ";
	j36[6]<-"                                                                                  ";
	j36[7]<-"                                                                                  "; 
	j36[8]<-"                                                                                  "; 
	j36[9]<-"                                                                     O=<88>=0<E   ";
	j36[10]<-"                                                                                 ";
	j36[11]<-"                                                                                 ";
	j36[12]<-"                                                                                 ";
	
	
	
	Dimension j37[13];                                                            
	j37[0]<-"                                                                                  ";
	j37[1]<-"                                                                                  ";
	j37[2]<-"                                                                                  ";
	j37[3]<-"                                                                                  ";
	j37[4]<-"                                                                                  ";
	j37[5]<-"                                                                                  ";
	j37[6]<-"                                                                                  ";
	j37[7]<-"                                                                                  "; 
	j37[8]<-"                                                                                  "; 
	j37[9]<-"                                                                 O=<88>=0<E       ";
	j37[10]<-"                                                                                 ";
	j37[11]<-"                                                                                 ";
	j37[12]<-"                                                                                 ";
	
	
	Dimension j38[13];                                                             
	j38[0]<-"                                                                                  ";
	j38[1]<-"                                                                                  ";
	j38[2]<-"                                                                                  ";
	j38[3]<-"                                                                                  ";
	j38[4]<-"                                                                                  ";
	j38[5]<-"                                                                                  ";
	j38[6]<-"                                                                                  ";
	j38[7]<-"                                                                                  "; 
	j38[8]<-"                                                                                  "; 
	j38[9]<-"                                                             O=<88>=0<E           ";
	j38[10]<-"                                                                                 ";
	j38[11]<-"                                                                                 ";
	j38[12]<-"                                                                                 ";
	
	
	
	Dimension j39[13];                                                             
	j39[0]<-"                                                                                  ";
	j39[1]<-"                                                                                  ";
	j39[2]<-"                                                                                  ";
	j39[3]<-"                                                                                  ";
	j39[4]<-"                                                                                  ";
	j39[5]<-"                                                                                  ";
	j39[6]<-"                                                                                  ";
	j39[7]<-"                                                                                  "; 
	j39[8]<-"                                                                                  "; 
	j39[9]<-"                                                             O=<88>=0<E           ";
	j39[10]<-"                                                                                 ";
	j39[11]<-"                                                                                 ";
	j39[12]<-"                                                                                 ";
	
	
	Dimension j40[13];                                                             
	j40[0]<-"                                                                                  ";
	j40[1]<-"                                                                                  ";
	j40[2]<-"                                                                                  ";
	j40[3]<-"                                                                                  ";
	j40[4]<-"                                                                                  ";
	j40[5]<-"                                                                                  ";
	j40[6]<-"                                                                                  ";
	j40[7]<-"                                                                                  "; 
	j40[8]<-"                                                                                  "; 
	j40[9]<-"                                                  O=<88>=0<E                        ";
	j40[10]<-"                                                                                 ";
	j40[11]<-"                                                                                 ";
	j40[12]<-"                                                                                 ";
	
	
	Dimension j41[13];    
	j41[0]<-"                                                                                  ";
	j41[1]<-"                                                                                  ";
	j41[2]<-"                                                                                  ";
	j41[3]<-"                                                                                  ";
	j41[4]<-"                                                                                  ";
	j41[5]<-"                                                                                  ";
	j41[6]<-"                                                                                  ";
	j41[7]<-"                                                                                  ";
	j41[8]<-"                                                   ____               ___         ";
	j41[9]<-"                                O=<88>=O<E         ____                           ";
	j41[10]<-"                                                                                 ";
	j41[11]<-"                                                                                 ";
	j41[12]<-"                                                                                 ";
	
	
	
	Dimension j42[13]; 
	j42[0]<-"                                                                                  ";
	j42[1]<-"                                                                                  ";
	j42[2]<-"                                                                                  ";
	j42[3]<-"                                                                                  ";
	j42[4]<-"                                                                                  ";
	j42[5]<-"                                                                                  ";
	j42[6]<-"                                                                                  ";
	j42[7]<-"                                                                                  ";
	j42[8]<-"                                               ____               ____            ";
	j42[9]<-"                               O=<88>=O<E__          ____               =         ";
	j42[10]<-"                                                                                 "; 
	j42[11]<-"                                                                                 ";
	j42[12]<-"                                                                                 ";
	
	
	Dimension j43[13];																
	j43[0]<-"                                                                                  ";
	j43[1]<-"                                                                                  ";
	j43[2]<-"                                                                                  ";
	j43[3]<-"                                                                                  ";
	j43[4]<-"                                                                                  ";
	j43[5]<-"                                                                                  ";
	j43[6]<-"                                                                                  ";
	j43[7]<-"                                                                                  ";
	j43[8]<-"                                           ____               ____     __         ";
	j43[9]<-"                              O=<88>=O<E ____          ____           ===         ";
	j43[10]<-"        -                                                                        ";
	j43[11]<-"                                                                                 ";
	j43[12]<-"                                                                                 ";
	
	
	Dimension j44[13];																 								
	j44[0]<-"                                                                                  ";
	j44[1]<-"                                                                                  ";
	j44[2]<-"                                                                                  ";
	j44[3]<-"                                                                                  ";
	j44[4]<-"                                                                                  "; 
	j44[5]<-"                                                                                  ";
	j44[6]<-"                                                                                  ";
	j44[7]<-"                                                                                  ";
	j44[8]<-"                                       ____               ____       ____         ";
	j44[9]<-"                             O=<88>=O<E    ____          ____       =====         ";
	j44[10]<-"                                                                     ````        ";
	j44[11]<-"                                                                                 ";
	j44[12]<-"                                                                                 ";
	
	
	
	Dimension j45[13];																
	j45[0]<-"                                                                                   ";
	j45[1]<-"                                                                                   ";
	j45[2]<-"                                                                                   ";
	j45[3]<-"                                                                                   ";
	j45[4]<-"                                                                                   ";
	j45[5]<-"                                                                                   ";
	j45[6]<-"                                                                                   ";
	j45[7]<-"                                    ,                                              ";
	j45[8]<-"                                   `*`_               ____         ______          ";
	j45[9]<-"                            O=<88>=O<E       ____          ____  .=======          ";
	j45[10]<-"                                                                 .*`````          ";
	j45[11]<-"                                                                   ``             ";
	j45[12]<-"                                                                                  ";
	
	
	
	Dimension j46[13];																
	j46[0]<-"                                                                                   ";
	j46[1]<-"                                                                                   ";
	j46[2]<-"                                                                                   ";
	j46[3]<-"                                                                                   ";
	j46[4]<-"                                                                                   "; 
	j46[5]<-"                                                                                   ";
	j46[6]<-"                                                                                   ";
	j46[7]<-"                                  ` `                                              ";
	j46[8]<-"                                 ` ` `            ____           ________          ";
	j46[9]<-"                           O=<88>=O<E          ____          _ .=========          ";
	j46[10]<-"                                                              ` *```````          ";
	j46[11]<-"                                                               `.`                ";
	j46[12]<-"                                                                                  ";
	
	
	Dimension j47[13];																 
	j47[0]<-"                                                                                   ";
	j47[1]<-"                                                                                   ";
	j47[2]<-"                                                                                   ";
	j47[3]<-"                                                                                   ";
	j47[4]<-"                                                                                   ";
	j47[5]<-"                                                                                   ";
	j47[6]<-"                                  ``                                               ";
	j47[7]<-"                               `    `                                              ";
	j47[8]<-"                                              __                 _______-          ";
	j47[9]<-"                          O=<88>=O<E             ____       `` ===========         ";
	j47[10]<-"                                                           `   `````````-         ";
	j47[11]<-"                                                            ``   .                ";
	j47[12]<-"                                                              `                   ";
	
	
	Dimension j48[13];                                                                
	j48[0]<-"                                                                                   ";
	j48[1]<-"                                                                                   ";
	j48[2]<-"                                                                                   ";
	j48[3]<-"                                                                                   ";
	j48[4]<-"                                                                                   ";
	j48[5]<-"                                                                                   ";
	j48[6]<-"                                                                                   ";
	j48[7]<-"                                                                                   ";
	j48[8]<-"                                          ____           ``   _________---         ";
	j48[9]<-"                         O=<88>=O<E                ____     =============          ";
	j48[10]<-"                                                       `     ```````---           ";
	j48[11]<-"                                                                                  ";
	j48[12]<-"                                                          `      `                ";
	
	
	Dimension j49[13]; 																	
	j49[0]<-"                                                                                   ";
	j49[1]<-"                                                                                   ";
	j49[2]<-"                                                                                   ";
	j49[3]<-"                                                                                   ";
	j49[4]<-"                                                                                   ";
	j49[5]<-"                                                                                   "; 
	j49[6]<-"                                                                                   ";
	j49[7]<-"                                                                                   ";
	j49[8]<-"                                        ____               _________-<=>-          ";
	j49[9]<-"                        O=<88>=O<E                   ____ ===============          ";
	j49[10]<-"                                                           `````````-----         ";
	j49[11]<-"                                                                                  ";
	j49[12]<-"                                                                                  ";
	
	
	Dimension j50[13]; 																			 		
	j50[0]<-"                                                                                   ";
	j50[1]<-"                                                                                   ";
	j50[2]<-"                                                                                   ";
	j50[3]<-"                                                                                   ";
	j50[4]<-"                                                                                   "; 
	j50[5]<-"                                                                                   ";
	j50[6]<-"                                                                                   ";
	j50[7]<-"                                                                                   "; 
	j50[8]<-"                                    ____                 _________-------          ";
	j50[9]<-"                       O=<88>=O<E                      _=================          ";
	j50[10]<-"                                                       .*````````-------          ";
	j50[11]<-"                                                         ``                       ";
	j50[12]<-"                                                                                  ";
	
	
	Dimension j51[13]; 					                                              																																					
	j51[0]<-"                                                                                   ";
	j51[1]<-"                                                                                   ";
	j51[2]<-"                                                                                   ";
	j51[3]<-"                                                                                   ";
	j51[4]<-"                                                                                   ";
	j51[5]<-"                                                                                   ";
	j51[6]<-"                                                                                   ";
	j51[7]<-"                                                                                   ";
	j51[8]<-"                                ____                   _________---------          ";
	j51[9]<-"                      O=<88>=O<E                      ===================          ";
	j51[10]<-"                                                     ` *````````--------          ";
	j51[11]<-"                                                     ` - `                        ";
	j51[12]<-"                                                                                  ";
	
	
	Dimension j52[13]; 																
	j52[0]<-"                                                                                   ";
	j52[1]<-"                                                                                   ";
	j52[2]<-"                                                                                   ";
	j52[3]<-"                                                                                   ";
	j52[4]<-"                                                                                   ";
	j52[5]<-"                                                                                   ";
	j52[6]<-"                                                                                   ";
	j52[7]<-"                              ,                                        __          ";
	j52[8]<-"                             .*``                    _________----------           ";
	j52[9]<-"                     O=<88>=O<E                  . ======================          ";
	j52[10]<-"                                                .  *`````````------------         ";
	j52[11]<-"                                                 .  .  ``                         ";
	j52[12]<-"                                                                                  ";
	
	
	
	Dimension j53[13]; 										
	j53[0]<-"                                                                                   ";
	j53[1]<-"                                                                                   ";
	j53[2]<-"                                                                                   ";
	j53[3]<-"                                                                                   ";
	j53[4]<-"                                                                                   ";
	j53[5]<-"                                                                                   ";
	j53[6]<-"                                                                                   ";
	j53[7]<-"                             ```                                      ____         ";
	j53[8]<-"                           ` . ``              `   _________----------             ";
	j53[9]<-"                    O=<88>=O<E                   ========================          ";
	j53[10]<-"                                            `     ````````--------------          ";
	j53[11]<-"                                                                                  ";
	j53[12]<-"                                              `    .   `                          ";
	
	
	Dimension j54[13];																	
	j54[0]<-"                                                                                   ";
	j54[1]<-"                                                                                   ";
	j54[2]<-"                                                                                   ";
	j54[3]<-"                                                                                   ";
	j54[4]<-"                                                                                   ";
	j54[5]<-"                                                                                   ";
	j54[6]<-"                           .                                                       ";
	j54[7]<-"                                .                                   _____          ";
	j54[8]<-"                         ``                  ____  _________----------             ";
	j54[9]<-"                   O=<88>=O<E                   =========================          ";
	j54[10]<-"                                                 `````````---------------         ";
	j54[11]<-"                                                                                  ";
	j54[12]<-"                                                                                  ";
	
	
	Dimension j55[13];                                                              
	j55[0]<-"                                                                                   ";
	j55[1]<-"                                                                                   ";
	j55[2]<-"                                                                                   ";
	j55[3]<-"                                                                                   ";
	j55[4]<-"                                                                                   ";
	j55[5]<-"                                                                                   ";
	j55[6]<-"                                                                                   ";
	j55[7]<-"                                                                  _______          ";
	j55[8]<-"                                        ____   _________----------                 ";
	j55[9]<-"                  O=<88>=O<E                  ===========================          ";
	j55[10]<-"                                               `````````-----------------         ";
	j55[11]<-"                                                                                  ";
	j55[12]<-"                                                                                  ";
	
	
	Dimension j56[13];															
	j56[0]<-"                                                                                   ";
	j56[1]<-"                                                                                   ";
	j56[2]<-"                                                                                   ";
	j56[3]<-"                                                                                   ";
	j56[4]<-"                                                                                   ";
	j56[5]<-"                                                                                   ";
	j56[6]<-"                                                                                   ";
	j56[7]<-"                                                                ________-          ";
	j56[8]<-"                                    ____     _________----------                   ";
	j56[9]<-"                 O=<88>=O<E                 =============================          ";
	j56[10]<-"                                             `````````-----------------__         ";
	j56[11]<-"                                                                                  ";
	j56[12]<-"                                                                                  ";
	
	
	Dimension j57[13];                                                             	   
	j57[0]<-"                                                                                   ";
	j57[1]<-"                                                                                   ";
	j57[2]<-"                                                                                   ";
	j57[3]<-"                                                                                   ";
	j57[4]<-"                                                                                   ";
	j57[5]<-"                                                                                   ";
	j57[6]<-"                                                                                   ";
	j57[7]<-"                                                              ________---          ";
	j57[8]<-"                                ____       _________----------                     ";
	j57[9]<-"                O=<88>=O<E                ===============================          ";
	j57[10]<-"                                           `````````-----------------____         ";
	j57[11]<-"                                                                                  ";
	j57[12]<-"                                                                                  ";
	
	
	Dimension j58[13];																 
	j58[0]<-"                                                                                   ";
	j58[1]<-"                                                                                   ";
	j58[2]<-"                                                                                   ";
	j58[3]<-"                                                                                   ";
	j58[4]<-"                                                                                   ";
	j58[5]<-"                                                                                   ";
	j58[6]<-"                                                                                   ";
	j58[7]<-"                                                            ________-----          ";
	j58[8]<-"                            ____         _________----------                       ";
	j58[9]<-"               O=<88>=O<E               =================================          ";
	j58[10]<-"                                         `````````-----------------______         ";
	j58[11]<-"                                                                                  ";
	j58[12]<-"                                                                                  ";
	
	Dimension j59[13];
	j59[0]<- "                                                                                  ";
	j59[1]<- "                                                                                  ";
	j59[2]<- "                                                                                  ";
	j59[3]<- "                                                                                  ";
	j59[4]<- "                                                                                  ";
	j59[5]<- "                                                                                  ";
	j59[6]<- "                                                                                  ";
	j59[7]<- "                                                          ________-------         ";
	j59[8]<- "                        ____           _________----------                        ";
	j59[9]<- "              O=<88>=O<E              ===================================         ";
	j59[10]<-"                                       `````````-----------------________         ";
	j59[11]<-"                                                                                  ";
	j59[12]<-"                                                                                  ";
	
	
	
	
	Dimension j61[13];
	j61[0]<- "                                                                                  ";
	j61[1]<- "                                                                                  ";
	j61[2]<- "                                                                                  ";
	j61[3]<- "                                                                                  ";
	j61[4]<- "                                                                                  ";
	j61[5]<- "                                                                                  ";
	j61[6]<- "                                                                        I         ";
	j61[7]<- "                  .                                     ________---------         ";
	j61[8]<- "                 .*__                _________----------                          ";
	j61[9]<- "             O=<88>=O<E             =====================================         ";
	j61[10]<-"                                     `````````-----------------__________         ";
	j61[11]<-"                                                                                  ";
	j61[12]<-"                                                                                  ";
	
	
	
	
	Dimension j62[13];
	j62[0]<- "                                                                         ";
	j62[1]<- "                                                                         ";
	j62[2]<- "                                                                         ";
	j62[3]<- "                                                                         ";
	j62[4]<- "                                                                         ";
	j62[5]<- "                                                                       __";
	j62[6]<- "                                                                      I_ ";
	j62[7]<- "                . `                                    ________--------- ";
	j62[8]<- "               `` *`                 _________----------                  ";
	j62[9]<- "            O=<88>=O<E            =======================================";
	j62[10]<-"                                   `````````-----------------____________";
	j62[11]<-"                                                                         ";
	j62[12]<-"                                                                         ";
	
	
	
	
	Dimension j63[13];
	j63[0]<- "                                                                         ";
	j63[1]<- "                                                                         ";
	j63[2]<- "                                                                         ";
	j63[3]<- "                                                                         ";
	j63[4]<- "                                                                         ";
	j63[5]<- "                                                                     __O_";
	j63[6]<- "                .                                                   I_   ";
	j63[7]<- "               .  `                                 ________----------`  ";
	j63[8]<- "              `    `             _________----------                     ";
	j63[9]<- "           O=<88>=O<E           =========================================";
	j63[10]<-"                                 `````````-----------------______________";
	j63[11]<-"                                                                         ";
	j63[12]<-"                                                                         ";
	
	
	
	
	Dimension j64[13];
	j64[0]<- "                                                                         ";
	j64[1]<- "                                                                         ";
	j64[2]<- "                                                                         ";
	j64[3]<- "                                                                         ";
	j64[4]<- "                                                                         ";
	j64[5]<- "                                                                   __O__ ";
	j64[6]<- "                 .                                                I_    \";
	j64[7]<- "                                                  ________----------`    ";
	j64[8]<- "            `      `            _________----------                      ";
	j64[9]<- "          O=<88>=O<E          ===========================================";
	j64[10]<-"                               `````````-----------------________________";
	j64[11]<-"                                                                         ";
	j64[12]<-"                                                                         ";
	
	
	
	
	Dimension j65[13];
	j65[0]<- "                                                                         ";
	j65[1]<- "                                                                         ";
	j65[2]<- "                                                                         ";
	j65[3]<- "                                                                         ";
	j65[4]<- "                                                                         ";
	j65[5]<- "                                                                 __O__   ";
	j65[6]<- "                                                                I_    \  ";
	j65[7]<- "                                                ________----------`    \ ";
	j65[8]<- "                             _________----------                        \";
	j65[9]<- "         O=<88>=O<E         ============================================(";
	j65[10]<-"                             `````````------------------________________/";
	j65[11]<-"                                                                         ";
	j65[12]<-"                                                                         ";
	
	
	
	
	Dimension j66[13];
	j66[0]<- "                                                                         ";
	j66[1]<- "                                                                         ";
	j66[2]<- "                                                                         ";
	j66[3]<- "                                                                         ";
	j66[4]<- "                                                                         ";
	j66[5]<- "                                                               __O__     ";
	j66[6]<- "                                                              I_    \    ";
	j66[7]<- "                                              ________----------`    \   ";
	j66[8]<- "                           _________----------                        \  ";
	j66[9]<- "        O=<88>=O<E        ============================================(  ";
	j66[10]<-"                           `````````------------------________________/  ";
	j66[11]<-"                                                                         ";
	j66[12]<-"                                                                         ";
	
	
	
	
	Dimension j67[13];
	j67[0]<- "                                                                         ";
	j67[1]<- "                                                                         ";
	j67[2]<- "                                                                         ";
	j67[3]<- "                                                                         ";
	j67[4]<- "                                                                         ";
	j67[5]<- "                                                             __O__       ";
	j67[6]<- "                                                            I_    \      ";
	j67[7]<- "                                            ________----------`    \     ";
	j67[8]<- "                         _________----------                        \    ";
	j67[9]<- "       O=<88>=O<E       ============================================(    ";
	j67[10]<-"                         `````````------------------________________/    ";
	j67[11]<-"                                                                         ";
	j67[12]<-"                                                                         ";
	
	
	
	
	Dimension j68[13];
	j68[0]<- "                                                                         ";
	j68[1]<- "                                                                         ";
	j68[2]<- "                                                                         ";
	j68[3]<- "                                                                         ";
	j68[4]<- "                                                                         ";
	j68[5]<- "                                                           __O__         ";
	j68[6]<- "                                                          I_    \        ";
	j68[7]<- "                                          ________----------`    \       ";
	j68[8]<- "                       _________----------                        \      ";
	j68[9]<- "      O=<88>=O<E      ============================================(      ";
	j68[10]<-"                       `````````------------------________________/      ";
	j68[11]<-"                                                                         ";
	j68[12]<-"                                                                         ";
	
	
	
	
	Dimension j69[13];
	j69[0]<- "                                                                         ";
	j69[1]<- "                                                                         ";
	j69[2]<- "                                                                         ";
	j69[3]<- "                                                                         ";
	j69[4]<- "                                                                         ";
	j69[5]<- "                                                         __O__           ";
	j69[6]<- "                                                        I_    \          ";
	j69[7]<- "                                        ________----------`    \         ";
	j69[8]<- "                     _________----------                        \        ";
	j69[9]<- "      =<88>=O<E     ============================================(        ";
	j69[10]<-"                     `````````------------------________________/        ";
	j69[11]<-"                                                                         ";
	j69[12]<-"                                                                         ";
	
	
	
	
	Dimension j70[13];
	j70[0]<- "                                                                         ";
	j70[1]<- "                                                                         ";
	j70[2]<- "                                                                         ";
	j70[3]<- "                                                                         ";
	j70[4]<- "                                                                         ";
	j70[5]<- "                                                       __O__             ";
	j70[6]<- "                                                      I_    \            ";
	j70[7]<- "                                      ________----------`    \           ";
	j70[8]<- "                   _________----------                        \          ";
	j70[9]<- "      <88>=O<E    ============================================(          ";
	j70[10]<-"                   `````````------------------________________/          ";
	j70[11]<-"                                                                         ";
	j70[12]<-"                                                                         ";
	
	
	
	
	Dimension j71[13];
	j71[0]<- "                                                                         ";
	j71[1]<- "                                                                         ";
	j71[2]<- "                                                                         ";
	j71[3]<- "                                                                         ";
	j71[4]<- "                                                                         ";
	j71[5]<- "                                                     __O__               ";
	j71[6]<- "                                                    I_    \              ";
	j71[7]<- "                                    ________----------`    \             ";
	j71[8]<- "                 _________----------                        \            ";
	j71[9]<- "      88>=O<E   ============================================(            ";
	j71[10]<-"                `````````------------------________________/             ";
	j71[11]<-"                                                                         ";
	j71[12]<-"                                                                         ";
	
	
	
	
	Dimension j72[13];
	j72[0]<- "                                                                         ";
	j72[1]<- "                                                                         ";
	j72[2]<- "                                                                         ";
	j72[3]<- "                                                                         ";
	j72[4]<- "                                                                         ";
	j72[5]<- "                                                   __O__                 ";
	j72[6]<- "                                                  I_    \                ";
	j72[7]<- "                                   ________----------`    \              ";
	j72[8]<- "               _________----------                        \              ";
	j72[9]<- "      8>=O<E  ============================================(              ";
	j72[10]<-"               `````````------------------________________/              ";
	j72[11]<-"                                                                         ";
	j72[12]<-"                                                                         ";
	
	
	
	
	Dimension j73[13];
	j73[0]<- "                                                                         ";
	j73[1]<- "                                                                         ";
	j73[2]<- "                                                                         ";
	j73[3]<- "                                                                         ";
	j73[4]<- "                                                                         ";
	j73[5]<- "                                                                         ";
	j73[6]<- "                                                                         ";
	j73[7]<- "                                                                         ";
	j73[8]<- "                                                                         ";
	j73[9]<- "                                                                         ";
	j73[10]<-"                                                                         ";
	j73[11]<-"                                                                         ";
	j73[12]<-"                                                                         ";
	
	
	
	
	Dimension j74[13];
	j74[0]<- "                                                                         ";
	j74[1]<- "            .              .           . .           .              .    ";
	j74[2]<- "                                                                         ";
	j74[3]<- "                                                                         ";
	j74[4]<- "       .              __    _<>______   )   _____                        ";
	j74[5]<- "                     /  \__/_________\ /-\ /   __|                       ";
	j74[6]<- "                .   |====__ _________ |(O)|===|__                        ";
	j74[7]<- "                     \__/  \_________/ \-/ \_____|       .               ";
	j74[8]<- "                             <>                                          ";
	j74[9]<- "                                    .                                    ";
	j74[10]<-"        .             .                                                  ";
	j74[11]<-"                                             .                           ";
	j74[12]<-"                                                                 .       ";
	
	
	
	
	Dimension j75[13];
	j75[0]<- "                                                                         ";
	j75[1]<- "             .              .           . .           .              .   ";
	j75[2]<- "                                                                         ";
	j75[3]<- "                                                                         ";
	j75[4]<- "        .             __    _<>______   )   _____                        ";
	j75[5]<- "                     /  \__/_________\ /-\ /   __|                       ";
	j75[6]<- "                 .  |====__ _________ |(O)|===|__                        ";
	j75[7]<- "                     \__/  \_________/ \-/ \_____|        .              ";
	j75[8]<- "                             <>                                          ";
	j75[9]<- "                                     .                                   ";
	j75[10]<-"         .             .                                                 ";
	j75[11]<-"                                              .                          ";
	j75[12]<-"                                              `                   .      ";
	
	
	
	
	
	Dimension j76[13];
	j76[0]<- "                                                                         ";
	j76[1]<- "              .              .           . .           .              .  ";
	j76[2]<- "                                                                         ";
	j76[3]<- "                                                                         ";
	j76[4]<- "         .            __    _<>______   )   _____                        ";
	j76[5]<- "                     /  \__/_________\ /-\ /   __|                       ";
	j76[6]<- "                  . |====__ _________ |(O)|===|__                        ";
	j76[7]<- "                     \__/  \_________/ \-/ \_____|         .             ";
	j76[8]<- "                             <>                                          ";
	j76[9]<- "                                      .                                  ";
	j76[10]<-"          .             .                                                ";
	j76[11]<-"                                               .                         ";
	j76[12]<-"                                                                   .     ";
	
	
	
	
	Dimension j77[13];
	j77[0]<- "                                                                         ";
	j77[1]<- "               .              .           . .           .              . ";
	j77[2]<- "                                                                         ";
	j77[3]<- "                                                                         ";
	j77[4]<- "          .           __    _<>______   )   _____                        ";
	j77[5]<- "                     /  \__/_________\ /-\ /   __|                       ";
	j77[6]<- "                   .|====__ _________ |(O)|===|__                        ";
	j77[7]<- "      .              \__/  \_________/ \-/ \_____|          .            ";
	j77[8]<- "                             <>                                          ";
	j77[9]<- "                                       .                                 ";
	j77[10]<-"           .             .                                               ";
	j77[11]<-"                                                .                        ";
	j77[12]<-"                                                                    .    ";
	
	
	
	
	Dimension j78[13];
	j78[0]<- "                                                                         ";
	j78[1]<- "                .              .           . .           .              .";
	j78[2]<- "                                                                         ";
	j78[3]<- "                                                                         ";
	j78[4]<- "           .          __    _<>______   )   _____                        ";
	j78[5]<- "                     /  \__/_________\ /-\ /   __|                       ";
	j78[6]<- "                    |====__ _________ |(O)|===|__                        ";
	j78[7]<- "       .             \__/  \_________/ \-/ \_____|           .           ";
	j78[8]<- "                             <>                                          ";
	j78[9]<- "                                        .                                ";
	j78[10]<-"            .             .                                              ";
	j78[11]<-"                                                 .                       ";
	j78[12]<-"                                                                     .   ";
	
	
	
	
	Dimension j79[13];
	j79[0]<- "                                                                         ";
	j79[1]<- "                 .              .           . .           .              ";
	j79[2]<- "                                                                         ";
	j79[3]<- "      .                                                                 _";
	j79[4]<- "            .         __    _<>______   )   _____                        ";
	j79[5]<- "                     /  \__/_________\ /-\ /   __|                       ";
	j79[6]<- "                    |====__ _________ |(O)|===|__                        ";
	j79[7]<- "        .            \__/  \_________/ \-/ \_____|            .          ";
	j79[8]<- "                             <>                                          ";
	j79[9]<- "                                         .                               ";
	j79[10]<-"             .             .                                             ";
	j79[11]<-"                                                  .                      ";
	j79[12]<-"                                                                      .  ";
	
	
	
	
	Dimension j80[13];
	j80[0]<- "                                                                         ";
	j80[1]<- "                  .              .           . .           .             ";
	j80[2]<- "                                                                         ";
	j80[3]<- "       .                                                              ___";
	j80[4]<- "             .        __    _<>______   )   _____                        ";
	j80[5]<- "                     /  \__/_________\ /-\ /   __|                       ";
	j80[6]<- "                    |====__ _________ |(O)|===|__                        ";
	j80[7]<- "         .           \__/  \_________/ \-/ \_____|             .         ";
	j80[8]<- "                             <>                                          ";
	j80[9]<- "                                          .                              ";
	j80[10]<-"              .             .                                            ";
	j80[11]<-"                                                   .                     ";
	j80[12]<-"                                                                       . ";
	
	
	
	
	Dimension j81[13];
	j81[0]<- "                                                                         ";
	j81[1]<- "                   .              .           . .           .            ";
	j81[2]<- "                                                                         ";
	j81[3]<- "        .                                                           _____";
	j81[4]<- "              .       __    _<>______   )   _____                        ";
	j81[5]<- "                     /  \__/_________\ /-\ /   __|                       ";
	j81[6]<- "                    |====__ _________ |(O)|===|__                        ";
	j81[7]<- "          .          \__/  \_________/ \-/ \_____|              .        ";
	j81[8]<- "                             <>                                          ";
	j81[9]<- "                                           .                             ";
	j81[10]<-"               .             .                                           ";
	j81[11]<-"                                                    .                    ";
	j81[12]<-"                                                                        .";
	
	
	
	
	Dimension j82[13];
	j82[0]<- "                                                                         ";
	j82[1]<- "                    .              .           . .           .           ";
	j82[2]<- "                                                                         ";
	j82[3]<- "         .                                                        _____  ";
	j82[4]<- "               .      __    _<>______   )   _____                        ";
	j82[5]<- "                     /  \__/_________\ /-\ /   __|                       ";
	j82[6]<- "                    |====__ _________ |(O)|===|__                        ";
	j82[7]<- "           .         \__/  \_________/ \-/ \_____|               .       ";
	j82[8]<- "                             <>                                          ";
	j82[9]<- "                                            .                            ";
	j82[10]<-"                .             .                                          ";
	j82[11]<-"      .                                               .                  ";
	j82[12]<-"                                                                         ";
	
	
	
	
	Dimension j83[13];
	j83[0]<- "                                                                         ";
	j83[1]<- "                     .              .           . .           .          ";
	j83[2]<- "                                                                         ";
	j83[3]<- "          .                                                     _____    ";
	j83[4]<- "                .     __    _<>______   )   _____                        ";
	j83[5]<- "                     /  \__/_________\ /-\ /   __|                       ";
	j83[6]<- "                    |====__ _________ |(O)|===|__                        ";
	j83[7]<- "            .        \__/  \_________/ \-/ \_____|                .      ";
	j83[8]<- "                             <>                                          ";
	j83[9]<- "                                             .                           ";
	j83[10]<-"                 .             .                                         ";
	j83[11]<-"       .                                               .                 ";
	j83[12]<-"                                                                         ";
	
	
	
	
	Dimension j84[13];
	j84[0]<- "                                                                         ";
	j84[1]<- "                      .              .           . .           .         ";
	j84[2]<- "                                                                         ";
	j84[3]<- "           .                                                  _____      ";
	j84[4]<- "                 .    __    _<>______   )   _____                        ";
	j84[5]<- "                     /  \__/_________\ /-\ /   __|                       ";
	j84[6]<- "                    |====__ _________ |(O)|===|__                        ";
	j84[7]<- "             .       \__/  \_________/ \-/ \_____|                 .     ";
	j84[8]<- "                             <>                                          ";
	j84[9]<- "                                              .                          ";
	j84[10]<-"                  .             .                                        ";
	j84[11]<-"        .                                               .                ";
	j84[12]<-"                                                                         ";
	
	
	
	
	Dimension j85[13];
	j85[0]<-"                                                                         ";
	j85[1]<-"                       .              .           . .           .        ";
	j85[2]<-"                                                                         ";
	j85[3]<-"            .                                               _____        ";
	j85[4]<-"                  .   __    _<>______   )   _____                        ";
	j85[5]<-"                     /  \__/_________\ /-\ /   __|                       ";
	j85[6]<-"                    |====__ _________ |(O)|===|__                        ";
	j85[7]<-"              .      \__/  \_________/ \-/ \_____|                  .    ";
	j85[8]<-"                             <>                                          ";
	j85[9]<-"                                               .                         ";
	j85[10]<-"                   .             .                                       ";
	j85[11]<-"         .                                               .               ";
	j85[12]<-"                                                                         ";
	
	
	
	
	Dimension j86[13];
	j86[0]<-"      .                                                                  ";
	j86[1]<-"                        .              .           . .           .       ";
	j86[2]<-"                                                                         ";
	j86[3]<-"             .                                            _____          ";
	j86[4]<-"                   .  __    _<>______   )   _____                        ";
	j86[5]<-"      .              /  \__/_________\ /-\ /   __|                       ";
	j86[6]<-"                    |====__ _________ |(O)|===|__                        ";
	j86[7]<-"               .     \__/  \_________/ \-/ \_____|                   .   ";
	j86[8]<-"                             <>                                          ";
	j86[9]<-"                                                .                        ";
	j86[10]<-"                    .             .                                      ";
	j86[11]<-"          .                                               .              ";
	j86[12]<-"                                                                         ";
	
	
	
	
	Dimension j87[13];
	j87[0]<-"       .                                                                 ";
	j87[1]<-"                         .              .           . .           .      ";
	j87[2]<-"                                                                         ";
	j87[3]<-"              .                                         _____            ";
	j87[4]<-"                    . __    _<>______   )   _____                        ";
	j87[5]<-"       .             /  \__/_________\ /-\ /   __|                       ";
	j87[6]<-"                    |====__ _________ |(O)|===|__                        ";
	j87[7]<-"                .    \__/  \_________/ \-/ \_____|                    .  ";
	j87[8]<-"                             <>                                          ";
	j87[9]<-"                                                 .                       ";
	j87[10]<-"                     .             .                                     ";
	j87[11]<-"           .                                               .             ";
	j87[12]<-"                                                                         ";
	
	
	
	
	Dimension j88[13];
	j88[0]<-"        .                                                                ";
	j88[1]<-"                          .              .           . .           .     ";
	j88[2]<-"                                                                         ";
	j88[3]<-"               .                                      _____              ";
	j88[4]<-"                     .__    _<>______   )   _____                        ";
	j88[5]<-"        .            /  \__/_________\ /-\ /   __|                       ";
	j88[6]<-"                    |====__ _________ |(O)|===|__                        ";
	j88[7]<-"                 .   \__/  \_________/ \-/ \_____|                     . ";
	j88[8]<-"                             <>                                          ";
	j88[9]<-"                                                  .                      ";
	j88[10]<-"                      .             .                                    ";
	j88[11]<-"            .                                               .            ";
	j88[12]<-"                                                                         ";
	
	
	
	
	Dimension j89[13];
	j89[0]<-"         .                                                               ";
	j89[1]<-"                           .              .           . .           .    ";
	j89[2]<-"                                                                         ";
	j89[3]<-"                .                                   _____                ";
	j89[4]<-"                      __    _<>______   )   _____                        ";
	j89[5]<-"         .           /  \__/_________\ /-\ /   __|                       ";
	j89[6]<-"                    |====__ _________ |(O)|===|__                        ";
	j89[7]<-"                  .  \__/  \_________/ \-/ \_____|                      .";
	j89[8]<-"                             <>                                          ";
	j89[9]<-"                                                   .                     ";
	j89[10]<-"                       .             .                                   ";
	j89[11]<-"             .                                               .           ";
	j89[12]<-"                                                                         ";
	
	
	
	
	Dimension j90[13];
	j90[0]<- "          .                                                              ";
	j90[1]<- "                            .              .           . .           .   ";
	j90[2]<- "                                                                         ";
	j90[3]<- "                 .                                _____                  ";
	j90[4]<- "                      __    _<>______   )   _____                        ";
	j90[5]<- "          .          /  \__/_________\ /-\ /   __|                       ";
	j90[6]<- "                    |====__ _________ |(O)|===|__                        ";
	j90[7]<- "                   . \__/  \_________/ \-/ \_____|                       ";
	j90[8]<- "                             <>                                          ";
	j90[9]<- "                                                    .                    ";
	j90[10]<-"                        .             .                                  ";
	j90[11]<-"              .                                               .          ";
	j90[12]<-"                                                                         ";
	
	
	
	
	Dimension j91[13];
	j91[0]<- "          .                                                              ";
	j91[1]<- "                             .              .           . .           .  ";
	j91[2]<- "                                                                         ";
	j91[3]<- "                  .                             _____                    ";
	j91[4]<- "                      __.   _<>______   )   _____                        ";
	j91[5]<- "           .         /  \__/_________\ /-\ /   __|                       ";
	j91[6]<- "                    |====__ _________ |(O)|===|__                        ";
	j91[7]<- "                    .\__/  \_________/ \-/ \_____|                       ";
	j91[8]<- "      .                      <>                                          ";
	j91[9]<- "                                                     .                   ";
	j91[10]<-"                         .             .                                 ";
	j91[11]<-"               .                                               .         ";
	j91[12]<-"                                                                         ";
	
	
	
	
	Dimension j92[13];
	j92[0]<- "           .                                                             ";
	j92[1]<- "                              .              .           . .           . ";
	j92[2]<- "                                                                         ";
	j92[3]<- "                   .                          _____                      ";
	j92[4]<- "                      __ .  _<>______   )   _____                        ";
	j92[5]<- "            .        /  \__/_________\ /-\ /   __|                       ";
	j92[6]<- "                    |====__ _________ |(O)|===|__                        ";
	j92[7]<- "                     \__/  \_________/ \-/ \_____|                       ";
	j92[8]<- "       .                     <>                                          ";
	j92[9]<- "                                                      .                  ";
	j92[10]<-"                          .             .                                ";
	j92[11]<-"                .                                               .        ";
	j92[12]<-"                                                                         ";
	
	
	
	
	Dimension j93[13];
	j93[0]<- "            .                                                            ";
	j93[1]<- "                               .              .           . .           .";
	j93[2]<- "                                                                         ";
	j93[3]<- "                    .                       _____                        ";
	j93[4]<- "                      __  . _<>______   )   _____                        ";
	j93[5]<- "             .       /  \__/_________\ /-\ /   __|                       ";
	j93[6]<- "                    |====__ _________ |(O)|===|__                        ";
	j93[7]<- "                     \__/  \_________/ \-/ \_____|                       ";
	j93[8]<- "        .                    <>                                          ";
	j93[9]<- "                                                       .                 ";
	j93[10]<-"                           .             .                               ";
	j93[11]<-"                 .                                               .       ";
	j93[12]<-"                                                                         ";
	
	
	
	
	
	Dimension j94[13];
	j94[0]<- "            .                                                           ";
	j94[1]<- "                               .              .           . .           ";
	j94[2]<- "                                                                        ";
	j94[3]<- "                    .                    _____                          ";
	j94[4]<- "                     __   ._<>______   )   _____                        ";
	j94[5]<- "              .      /  \__/_________\ /-\ /   __|                     ";  
	j94[6]<- "                    |====__ _________ |(O)|===|__                    ";    
	j94[7]<- "                     \__/  \_________/ \-/ \_____|                     ";  
	j94[8]<- "         .                   <>                                          ";
	j94[9]<- "                                                        .               "; 
	j94[10]<-"                            .             .                             "; 
	j94[11]<-"                  .                                               .     "; 
	j94[12]<-"                                                                        "; 
	
	
	
	
	Dimension j95[13];
	j95[0]<- "              .                                                          "; 
	j95[1]<- "                                 .              .           . .          "; 
	j95[2]<- "                                                                         "; 
	j95[3]<- "                      .                 `__                              "; 
	j95[4]<- "                      __    _<>______   )   _____                         ";
	j95[5]<- "               .     /  \__/_________\ /-\ /   __|                      ";
	j95[6]<- "                    |====__ _________ |(O)|===|__                     ";  
	j95[7]<- "                     \__/  \_________/ \-/ \_____|                      ";
	j95[8]<- "          .                  <>                                           ";
	j95[9]<- "                                                         .               ";
	j95[10]<-"                             .             .                             ";
	j95[11]<-"                   .                                               .     ";
	j95[12]<-"                                                                         ";
	
	
	
	
	Dimension j96[13];
	j96[0]<- "              .                                                          ";
	j96[1]<- "                                 .              .           . .          ";
	j96[2]<- "                                         `                               ";
	j96[3]<- "                      .                `._                               ";
	j96[4]<- "                      __    _<>______  `)   _____                         ";
	j96[5]<- "               .     /  \__/_________\ /-\ /   __|                       ";
	j96[6]<- "                    |====__ _________ |(O)|===|__                      "; 
	j96[7]<- "                     \__/  \_________/ \-/ \_____|                       ";
	j96[8]<- "          .                  <>                                            ";
	j96[9]<- "                                                         .                ";
	j96[10]<- "                             .             .                             ";
	j96[11]<- "                   .                                               .     ";
	j96[12]<- "                                                                         ";
	
	
	
	
	Dimension j97[13];
	j97[0]<- "                .                                                        ";
	j97[1]<- "                                   .              .           . .        ";
	j97[2]<- "                                      ` `` `                              ";
	j97[3]<- "      .                 .              `                                 ";
	j97[4]<- "                      __    _<>______ : *   _____                        ";
	j97[5]<- "                 .   /  \__/_________\ /-\ /   __|                      "; 
	j97[6]<- "                    |====__ _________ |(O)|===|__                     ";   
	j97[7]<- "                     \__/ .\_________/ \-/ \_____|                      "; 
	j97[8]<- "            .                <>                                          ";
	j97[9]<- "                                                           .             ";
	j97[10]<- "                               .             .                           ";
	j97[11]<- "                     .                                               .   ";
	j97[12]<- "                                                                         ";
	
	
	
	
	Dimension j98[13];
	j98[0]<- "                .                                                        ";
	j98[1]<- "                                   .   .  ,       .           . .        ";
	j98[2]<- "                                     `     `                             ";
	j98[3]<- "      .                 .           :   *   ``                            ";
	j98[4]<- "                      __    _<>______`` ***  -____                        ";
	j98[5]<- "                 .   /  \__/_________\ /-\ /   __|                       ";
	j98[6]<- "                    |====__ _________ |(O)|===|__                      ";  
	j98[7]<- "                     \__/ .\_________/ \-/ \_____|                       ";
	j98[8]<- "            .                <>                                          ";
	j98[9]<- "                                                           .             ";
	j98[10]<- "                               .             .                           ";
	j98[11]<- "                     .                                               .   ";
	j98[12]<- "                                                                         ";
	
	
	
	
	Dimension j99[13];
	j99[0]<- "                .               `          `                             ";
	j99[1]<- "                                   .  `    ;  `   .           . .        ";
	j99[2]<- "                                        *                                ";
	j99[3]<- "      .                 .         ;  , ***,   `                          ";
	j99[4]<- "                      __    _<>______ ***** _____                        ";
	j99[5]<- "                 .   /  \__/_________\ /-\ /   __|                       ";
	j99[6]<- "                    |====__ _________ |(O)|===|__                      ";  
	j99[7]<- "                     \__/ .\_________/ \-/ \_____|                       ";
	j99[8]<- "            .                <>                                          ";
	j99[9]<- "                                                           .             ";
	j99[10]<- "                               .             .                           ";
	j99[11]<- "                     .                                               .   ";
	j99[12]<- "                                                                         ";
	
	
	
	
	Dimension j100[13];
	j100[0]<- "                .               `   ``                                    ";
	j100[1]<- "                                   .      *      `.           . .        ";
	j100[2]<- "                               ``       *  * ,                            ";
	j100[3]<- "      .                 .       ,     *    *   ``                        ";
	j100[4]<- "                      __    _<>______ *  ** _____                        ";
	j100[5]<- "                 .   /  \__/_________\ /-\ /   __|                      "; 
	j100[6]<- "                    |====__ _________ |(O)|===|__                     ";   
	j100[7]<- "                     \__/ .\_________/ \-/ \_____|                      "; 
	j100[8]<- "            .                <>                                          ";
	j100[9]<- "                                                           .             ";
	j100[10]<- "                               .             .                           ";
	j100[11]<- "                     .                                               .   ";
	j100[12]<- "                                                                         ";
	
	
	
	
	Dimension j101[13];
	j101[0]<- "                .                        *                               ";
	j101[1]<- "                              ``    .              .           . .        ";
	j101[2]<- "                                                                         ";
	j101[3]<- "      .                 .           *         *    ``                      ";
	j101[4]<- "                      __    _<>______       _____                        ";
	j101[5]<- "                 .   /  \__/_________\ /-\ /   __|                       ";
	j101[6]<- "                    |====__ _________ |(O)|===|__                      ";  
	j101[7]<- "                     \__/ .\_________/ \-/ \_____|                       ";
	j101[8]<- "            .                <>                                          ";
	j101[9]<- "                                                           .             ";
	j101[10]<- "                               .             .                           ";
	j101[11]<- "                     .                                               .   ";
	j101[12]<- "                                                                         ";
	
	
	
	
	Dimension j102[13];
	j102[0]<- "                .         `                                              ";
	j102[1]<- "                                   .              .           . .        ";
	j102[2]<- "                                                            `            ";
	j102[3]<- "      .                 .                                                ";
	j102[4]<- "                      __    _<>______       _____                        ";
	j102[5]<- "                 .   /  \__/_________\ /-\ /   __|                       ";
	j102[6]<- "                    |====__ _________ |(O)|===|__                      ";  
	j102[7]<- "                     \__/ .\_________/ \-/ \_____|                       ";
	j102[8]<- "            .                <>                                          ";
	j102[9]<- "                                                           .             ";
	j102[10]<- "                               .             .                           ";
	j102[11]<- "                     .                                               .   ";
	j102[12]<- "                                                                         ";
	
	
	
	
	Dimension j103[13];
	j103[0]<- "                .                                                        ";
	j103[1]<- "                                   .              .           . .        ";
	j103[2]<- "                                                                         ";
	j103[3]<- "      .                 .                                                ";
	j103[4]<- "                      __    _<>______       _____                        ";
	j103[5]<- "                 .   /  \__/_________\ /-\ /   __|                       ";
	j103[6]<- "                    |====__ _________ |(O)|===|__                      ";  
	j103[7]<- "                     \__/ .\_________/ \-/ \_____|                       ";
	j103[8]<- "            .                <>                                          ";
	j103[9]<- "                                                           .             ";
	j103[10]<- "                               .             .                           ";
	j103[11]<- "                     .                                               .   ";
	j103[12]<- "                                                                         ";
	
	
	
	
	Dimension j104[13];
	j104[0]<- "                                                                         ";
	j104[1]<- "                                                                         ";
	j104[2]<- "                                                                         ";
	j104[3]<- "                                                                         ";
	j104[4]<- "                                                                         ";
	j104[5]<- "                                                                         ";
	j104[6]<- "                                                                         ";
	j104[7]<- "                                                                         ";
	j104[8]<- "                                                                         ";
	j104[9]<- "                                                                         ";
	j104[10]<- "                                                                         ";
	j104[11]<- "                                                                         ";
	j104[12]<- "                                                                         ";
	
	
	
	
	Dimension m1[13];
	m1[0]<- "                                           /~\                           ";
	m1[1]<- "                                          |oo )                         "; 
	m1[2]<- "                                          _\=/_                          ";
	m1[3]<- "                          ___            /  _  \                         ";
	m1[4]<- "                         /() \          //|/.\|\\                        ";
	m1[5]<- "                       _|_____|_        \\ \_/  |                      "; 
	m1[6]<- "                      | | === | |        \|\ /| |                     ";  
	m1[7]<- "                      |_|  O  |_|        # _ _/ #                       "; 
	m1[8]<- "                        |  O  |           | | |                          ";
	m1[9]<- "                        |__*__|           | | |                          ";
	m1[10]<- "                      |~\___/~|          []|[]                         "; 
	m1[11]<- "                     /=\ /=\ /=\         | | |                         "; 
	m1[12]<- "      _______________[_]_[_]_[_]________/_]_[_\_________________________";
	
	
	
	
	Dimension m2[13];
	m2[0]<- "                                            /~\                          ";
	m2[1]<- "                                           |oo )                         ";
	m2[2]<- "                                           _\=/_                         ";
	m2[3]<- "                           ___            /  _  \                        ";
	m2[4]<- "                          / ()\          //|/.\|\\                       ";
	m2[5]<- "                        _|_____|_        \\ \_/  |                       ";
	m2[6]<- "                       | | === | |        \|\ /| |                       ";   
	m2[7]<- "                       |_|  O  |_|        # _ _/ #                       ";  
	m2[8]<- "                         |  O  |           | | |                         "; 
	m2[9]<- "                         |__*__|           | | |                         "; 
	m2[10]<- "                       |~\___/~|          []|[]                         ";  
	m2[11]<- "                      /=\ /=\ /=\         | | |                         ";  
	m2[12]<- "      ________________[_]_[_]_[_]________/_]_[_\________________________";
	
	
	
	
	Dimension m3[13];
	m3[0]<- "                                           /~\                           ";
	m3[1]<- "                                          |oo )                          ";
	m3[2]<- "                                          _\=/_                          ";
	m3[3]<- "                          ___            /  _  \                         ";
	m3[4]<- "                         /() \          //|/.\|\\                        ";
	m3[5]<- "                       _|_____|_        \\ \_/  |                        ";
	m3[6]<- "                      | | === | |        \|\ /| |                        ";  
	m3[7]<- "                      |_|  O  |_|        # _ _/ #                        "; 
	m3[8]<- "                        |  O  |           | | |                           ";
	m3[9]<- "                        |__*__|           | | |                           ";
	m3[10]<- "                      |~\___/~|          []|[]                           "; 
	m3[11]<- "                     /=\ /=\ /=\         | | |                          ";
	m3[12]<- "      _______________[_]_[_]_[_]________/_]_[_\_________________________";
	
	
	
	
	Dimension m4[13];
	m4[0]<- "                                          /~\                            ";
	m4[1]<- "                                         |oo )                           ";
	m4[2]<- "                                         _\=/_                           ";
	m4[3]<- "                         ___            /  _  \                          ";
	m4[4]<- "                        /() \          //|/.\|\\                         ";
	m4[5]<- "                      _|_____|_        \\ \_/  |                         ";
	m4[6]<- "                     | | === | |        \|\ /| |                         ";  
	m4[7]<- "                     |_|  O  |_|        # _ _/ #                         "; 
	m4[8]<- "                       |  O  |           | | |                           ";
	m4[9]<- "                       |__*__|           | | |                           ";
	m4[10]<- "                     |~\___/~|          []|[]                           ";
	m4[11]<- "                     /=\/=\/=\          | | |                           ";
	m4[12]<- "      ______________[_]_[_]_[_]________/_]_[_\__________________________";
	
	
	
	
	Dimension m5[13];
	m5[0]<- "                                           /~\                           ";
	m5[1]<- "                                          |oo )                         "; 
	m5[2]<- "                                          _\=/_                          ";
	m5[3]<- "                          ___            /  _  \                         ";
	m5[4]<- "                         /() \          //|/.\|\\                        ";
	m5[5]<- "                       _|_____|_        \\ \_/  |                      "; 
	m5[6]<- "                      | | === | |        \|\ /| |                   ";    
	m5[7]<- "                      |_|  O  |_|        # _ _/  #                    ";   
	m5[8]<- "                        |  O  |           | | |                        ";  
	m5[9]<- "                        |__*__|           | | |                        ";  
	m5[10]<- "                      |~\___/~|          []|[]                        ";  
	m5[11]<- "                      /=\/=\/=\          | | |                        ";  
	m5[12]<- "      _______________[_]_[_]_[_]____ ___/_]_[_\_________________________";
	
	
	
	
	Dimension m6[13];
	m6[0]<- "                                            /~\                           ";
	m6[1]<- "                                           |oo )                         "; 
	m6[2]<- "                                           _\=/_                          ";
	m6[3]<- "                          ___             /  _  \                         ";
	m6[4]<- "                         /() \           //|/.\|\\                        ";
	m6[5]<- "                       _|_____|_         \\ \_/  |                      "; 
	m6[6]<- "                      | | === | |         \|\ /| |                   ";    
	m6[7]<- "                      |_|  O  |_|         # _ _/ #                     ";   
	m6[8]<- "                        |  O  |            | | |                        ";  
	m6[9]<- "                        |__*__|            | | |                        ";  
	m6[10]<- "                      |~\___/~|           []|[]                        ";  
	m6[11]<- "                      /=\/=\/=\           | | |                        ";  
	m6[12]<- "      _______________[_]_[_]_[_]_________/_]_[_\_________________________";
	
	
	
	
	Dimension m7[13];
	m7[0]<- "                                            /~\                          ";
	m7[1]<- "                                           |oo )                        "; 
	m7[2]<- "                                           _\=/_                         ";
	m7[3]<- "                           ___            /  _  \                        ";
	m7[4]<- "                          / ()\          //|/.\|\\                       ";
	m7[5]<- "                        _|_____|_        \\ \_/  |                     "; 
	m7[6]<- "                       | | === | |        \|\ /| |                  ";    
	m7[7]<- "                       |_|  O  |_|        # _ _/ #                    ";   
	m7[8]<- "                         |  O  |           | | |                       ";  
	m7[9]<- "                         |__*__|           | | |                       ";  
	m7[10]<- "                       |~\___/~|          []|[]                      ";   
	m7[11]<- "                       /=\/=\/=\          | | |                      ";   
	m7[12]<- "      ________________[_]_[_]_[_]________/_]_[_\________________________";
	
	
	
	
	Dimension m8[13];
	m8[0]<- "                                          /~\                           ";
	m8[1]<- "                                         |oo )                         "; 
	m8[2]<- "                                         _\=/_                          ";
	m8[3]<- "                         ___            /  _  \                         ";
	m8[4]<- "                        /() \          //|/.\|\\                        ";
	m8[5]<- "                      _|_____|_        \\ \_/  |                      "; 
	m8[6]<- "                     | | === | |        \|\ /| |                   ";    
	m8[7]<- "                     |_|  O  |_|        # _ _/ #                     ";   
	m8[8]<- "                       |  O  |           | | |                        ";  
	m8[9]<- "                       |__*__|           | | |                        ";  
	m8[10]<- "                    |~\____/~|          []|[]                       ";   
	m8[11]<- "                     /=\/=\/=\          | | |                       ";   
	m8[12]<- "      ______________[_]_[_]_[_]________/_]_[_\_________________________";
	
	
	
	
	Dimension m9[13]; 
	m9[0]<- "                                          /~\                             ";
	m9[1]<- "                                         |oo )                            ";
	m9[2]<- "                                         _\=/_                            ";
	m9[3]<- "                         ___            /  _  \                           ";
	m9[4]<- "                        /() \          //|/.\|\\                          ";
	m9[5]<- "                      _|_____|_        \\ \_/  |                          ";
	m9[6]<- "                     | | === | |        \|\ /| |                          ";  
	m9[7]<- "                     |_|  O  |_|        # _ _/ #                          "; 
	m9[8]<- "                       |  O  |           | | |                            ";
	m9[9]<- "                       |__*__|           | | |                            ";
	m9[10]<- "                     |~\___/~|          []|[]                            ";
	m9[11]<- "                     /=\/=\/=\          | | |                            ";
	m9[12]<- "      ______________[_]_[_]_[_]________/_]_[_\__________________________ ";
	
	
	
	
	Dimension m10[13];
	m10[0]<- "                                           /~\                           ";
	m10[1]<- "                                          |oo )                          ";
	m10[2]<- "                                          _\=/_                          ";
	m10[3]<- "                          ___            /  _  \                         ";
	m10[4]<- "                         /() \          //|/.\|\\                        ";
	m10[5]<- "                       _|_____|_        \\ \_/  |                        ";
	m10[6]<- "                      | | === | |        \|\ /| |                        ";   
	m10[7]<- "                      |_|  O  |_|        # _ _/  #                       ";  
	m10[8]<- "                        |  O  |           | | |                          "; 
	m10[9]<- "                        |__*__|           | | |                          "; 
	m10[10]<- "                      |~\___/~|          []|[]                          ";  
	m10[11]<- "                      /=\/=\/=\          | | |                          ";  
	m10[12]<- "      _______________[_]_[_]_[_]________/_]_[_\_________________________";
	
	
	
	
	Dimension m11[13];
	m11[0]<- "                                           /~\                            ";
	m11[1]<- "                                          |oo )                           "; 
	m11[2]<- "                                          _\=/_                           ";
	m11[3]<- "                          ___            /  _  \                          ";
	m11[4]<- "                         / ()\          //|/.\|\\                         ";
	m11[5]<- "                       _|_____|_        \\ \_/  |                         "; 
	m11[6]<- "                      | | === | |        \|\ /| |                         ";    
	m11[7]<- "                      |_|  O  |_|        # _ _/  #                        ";   
	m11[8]<- "                        |  O  |           | | |                           ";  
	m11[9]<- "                        |__*__|           | | |                           ";  
	m11[10]<- "                      |~\___/~|          []|[]                           ";  
	m11[11]<- "                      /=\/=\/=\          | | |                           ";  
	m11[12]<- "      _______________[_]_[_]_[_]________/_]_[_\__________________________";
	
	
	
	
	Dimension m12[13];
	m12[0]<- "                                          /~\                             ";
	m12[1]<- "                                         |oo )    Did you hear that?      "; 
	m12[2]<- "                                         _\=/_                            ";
	m12[3]<- "                         ___            /  _  \                           ";
	m12[4]<- "                        / ()\          //|/.\|\\                          ";
	m12[5]<- "                      _|_____|_        \\ \_/  |                          "; 
	m12[6]<- "                     | | === | |        \|\ /| |                          ";    
	m12[7]<- "                     |_|  O  |_|        # _ _/ #                          "; 
	m12[8]<- "                       |  O  |           | | |                            ";
	m12[9]<- "                       |__*__|           | | |                            ";
	m12[10]<- "                     |~\___/~|          []|[]                            "; 
	m12[11]<- "                     /=\/=\/=\          | | |                            "; 
	m12[12]<- "      ______________[_]_[_]_[_]________/_]_[_\___________________________";
	
	
	
	
	Dimension m13[13];
	m13[0]<- "                                           /~\                            ";
	m13[1]<- "                                          |oo )                           "; 
	m13[2]<- "                                          _\=/_                           ";
	m13[3]<- "                          ___            /  _  \                          ";
	m13[4]<- "                         / ()\          //|/.\|\\                         ";
	m13[5]<- "                       _|_____|_        \\ \_/  |                         "; 
	m13[6]<- "                      | | === | |        \|\ /| |                         ";    
	m13[7]<- "                      |_|  O  |_|        # _ _/ #                         ";   
	m13[8]<- "                        |  O  |           | | |                           ";  
	m13[9]<- "                        |__*__|           | | |                           ";  
	m13[10]<- "                      |~\___/~|          []|[]                           ";   
	m13[11]<- "                      /=\/=\/=\          | | |                           ";   
	m13[12]<- "      _______________[_]_[_]_[_]________/_]_[_\__________________________";
	
	
	
	Dimension m14[13];
	m14[0]<- "                                          /~\                             ";
	m14[1]<- "                                         |oo )                            ";
	m14[2]<- "                                         _\=/_                            ";
	m14[3]<- "                         ___         #  /  _  \                           ";
	m14[4]<- "                        / ()\        \\//|/.\|\\                          ";
	m14[5]<- "                      _|_____|_       \/  \_/  |                          ";
	m14[6]<- "                     | | === | |         |\ /| |                          ";   
	m14[7]<- "                     |_|  O  |_|         \_ _/ #                          ";  
	m14[8]<- "                       |  O  |           | | |                            "; 
	m14[9]<- "                       |__*__|           | | |                            "; 
	m14[10]<- "                     |~\___/~|          []|[]                            ";  
	m14[11]<- "                     /=\/=\/=\          | | |                            "; 
	m14[12]<- "      ______________[_]_[_]_[_]________/_]_[_\___________________________";
	
	
	
	
	Dimension m15[13];
	m15[0]<- "                                           /~\                            ";
	m15[1]<- "                                          ( oo|    They have shut down    ";
	m15[2]<- "                                          _\=/_    the main reactor.      ";
	m15[3]<- "                          ___         #  /  _  \                          ";
	m15[4]<- "                         / ()\        \\//|/.\|\\                         ";
	m15[5]<- "                       _|_____|_       \/  \_/  |                         ";
	m15[6]<- "                      | | === | |         |\ /| |                         ";   
	m15[7]<- "                      |_|  O  |_|         \_ _/ #                         ";  
	m15[8]<- "                        |  O  |           | | |                           "; 
	m15[9]<- "                        |__*__|           | | |                           "; 
	m15[10]<- "                      |~\___/~|          []|[]                           ";  
	m15[11]<- "                      /=\/=\/=\          | | |                           ";  
	m15[12]<- "      _______________[_]_[_]_[_]________/_]_[_\__________________________";
	
	
	
	
	Dimension m16[13];
	m16[0]<- "                                           /~\                            ";
	m16[1]<- "                                          ( oo|    They have shut down    ";  
	m16[2]<- "                                          _\=/_    the main reactor.      ";
	m16[3]<- "                          ___         #  /  _  \                          ";
	m16[4]<- "                         / ()\        \\//|/.\|\\                         ";
	m16[5]<- "                       _|_____|_       \/  \_/  |                         ";
	m16[6]<- "                      | | === | |         |\ /| |                         ";  
	m16[7]<- "                      |_|  O  |_|         \_ _/ #                         "; 
	m16[8]<- "                        |  O  |           | | |                           ";
	m16[9]<- "                        |__*__|           | | |                           ";
	m16[10]<- "                      |~\___/~|          []|[]                           ";
	m16[11]<- "                      /=\/=\/=\          | | |                           ";
	m16[12]<- "      _______________[_]_[_]_[_]________/_]_[_\__________________________";
	
	
	
	
	Dimension m17[13];
	m17[0]<- "                                           /~\                            ";
	m17[1]<- "                                          |oo )                           "; 
	m17[2]<- "                                          _\=/_                           ";
	m17[3]<- "                          ___        #   /  _  \                          ";
	m17[4]<- "                         / ()\        \\//|/.\|\\                         ";
	m17[5]<- "                       _|_____|_       \/  \_/  |                         "; 
	m17[6]<- "                      | | === | |         |\ /| |                         ";    
	m17[7]<- "                      |_|  O  |_|         \_ _/ #                         ";   
	m17[8]<- "                        |  O  |           | | |                           ";  
	m17[9]<- "                        |__*__|           | | |                           ";  
	m17[10]<- "                      |~\___/~|          []|[]                           ";  
	m17[11]<- "                      /=\/=\/=\          | | |                           ";  
	m17[12]<- "      _______________[_]_[_]_[_]________/_]_[_\__________________________";
	
	
	
	
	Dimension m18[13];
	m18[0]<- "                                           /~\                            ";
	m18[1]<- "                                          |oo )                           "; 
	m18[2]<- "                                          _\=/_                           ";
	m18[3]<- "                          ___        #   /  _  \  #                       ";
	m18[4]<- "                         / ()\        \\//|/.\|\\//                       ";
	m18[5]<- "                       _|_____|_       \/  \_/  \/                        "; 
	m18[6]<- "                      | | === | |         |\ /|                           ";    
	m18[7]<- "                      |_|  O  |_|         \_ _/                           ";   
	m18[8]<- "                        |  O  |           | | |                           ";  
	m18[9]<- "                        |__*__|           | | |                           ";
	m18[10]<- "                      |~\___/~|          []|[]                           "; 
	m18[11]<- "                      /=\/=\/=\          | | |                           "; 
	m18[12]<- "      _______________[_]_[_]_[_]________/_]_[_\__________________________";
	
	
	
	
	Dimension m19[13];
	m19[0]<- "                                           /~\                            ";
	m19[1]<- "                                          |oo )      We`re doomed!        ";
	m19[2]<- "                                          _\=/_                           ";
	m19[3]<- "                          ___        #   /  _  \   #                      ";
	m19[4]<- "                         /() \        \\//|/.\|\\//                       ";
	m19[5]<- "                       _|_____|_       \/  \_/  \/                        ";
	m19[6]<- "                      | | === | |         |\ /|                           ";  
	m19[7]<- "                      |_|  O  |_|         \_ _/                           "; 
	m19[8]<- "                        |  O  |           | | |                           ";
	m19[9]<- "                        |__*__|           | | |                           ";
	m19[10]<- "                      |~\___/~|          []|[]                           "; 
	m19[11]<- "                      /=\/=\/=\          | | |                           "; 
	m19[12]<- "      _______________[_]_[_]_[_]________/_]_[_\__________________________";
	
	
	
	
	Dimension m20[13];
	m20[0]<- "                                                                         ";                                                       
	m20[1]<- "                                                                         ";
	m20[2]<- "                                                                         ";
	m20[3]<- "                                                                         ";
	m20[4]<- "                                                                         ";
	m20[5]<- "                                                                         ";
	m20[6]<- "                                                                         ";
	m20[7]<- "                                                                         ";
	m20[8]<- "                                                                         ";
	m20[9]<- "                                                                         ";
	m20[10]<-"                                                                         ";
	m20[11]<-"                                                                         ";
	m20[12]<-"                                                                         ";
	
	
	
	
	Dimension m21[13];
	m21[0]<- "                    .                                           .        ";
	m21[1]<- "        .                       .      .                                 ";
	m21[2]<- "                                                      .                  ";
	m21[3]<- "           .       .                          .                   .      ";
	m21[4]<- "                                  .                                      ";
	m21[5]<- "                                                           .             ";
	m21[6]<- "               .      __    _<>______ .     _____                        ";
	m21[7]<- "                     /  \__/_________\ /-\ /   __|                       "; 
	m21[8]<- "                    |====__ _________ |(O)|===|__      .                 ";   
	m21[9]<- "       .             \__/  \_________/ \-/ \_____|                 .     "; 
	m21[10]<- "                .            <>                                         ";
	m21[11]<- "                                      .                       .         ";
	m21[12]<- "                        .                            .                  ";
	
	
	
	
	Dimension m22[13];
	m22[0]<- "      ______|       .                                 |__________________";
	m22[1]<- "        .                       .      .                                 ";
	m22[2]<- "                                                      .                  ";
	m22[3]<- "           .       .                          .                   .      ";
	m22[4]<- "                                  .                                      ";
	m22[5]<- "                                                           .             ";
	m22[6]<- "               .      __    _<>______ .     _____                        ";
	m22[7]<- "                     /  \__/_________\ /-\ /   __|                       ";
	m22[8]<- "                    |====__ _________ |(O)|===|__      .                 ";  
	m22[9]<- "       .             \__/  \_________/ \-/ \_____|                 .     ";
	m22[10]<- "                .            <>                                         ";
	m22[11]<- "                                      .                       .         ";
	m22[12]<- "                        .                            .                  ";
	
	
	
	
	Dimension m23[13];
	m23[0]<- "      ======|       .                                 |==================";
	m23[1]<- "      ______|                   .      .              |__________________";
	m23[2]<- "                                                      .                  ";
	m23[3]<- "           .       .                          .                   .      ";
	m23[4]<- "                                  .                                      ";
	m23[5]<- "                                                           .             ";
	m23[6]<- "               .      __    _<>______ .     _____                        ";
	m23[7]<- "                     /  \__/_________\ /-\ /   __|                       ";
	m23[8]<- "                    |====__ _________ |(O)|===|__      .                 ";  
	m23[9]<- "       .             \__/  \_________/ \-/ \_____|                 .     ";
	m23[10]<- "                .            <>                                         ";
	m23[11]<- "                                      .                       .         ";
	m23[12]<- "                        .                            .                  ";
	
	
	
	
	Dimension m24[13];
	m24[0]<- "            |       .                                 |                  ";
	m24[1]<- "      ======|                   .      .              |==================";
	m24[2]<- "      ______|                                         |__________________";
	m24[3]<- "           .       .                          .                   .        ";
	m24[4]<- "                                  .                                        ";
	m24[5]<- "                                                           .               ";
	m24[6]<- "               .      __    _<>______ .     _____                           ";
	m24[7]<- "                     /  \__/_________\ /-\ /   __|                        "; 
	m24[8]<- "                    |====__ _________ |(O)|===|__      .                ";   
	m24[9]<- "       .             \__/  \_________/ \-/ \_____|                 .      "; 
	m24[10]<- "                .            <>                                            ";
	m24[11]<- "                                      .                       .           ";
	m24[12]<- "                        .                            .                    ";
	
	
	
	
	Dimension m25[13];
	m25[0]<- "            |       .                                 |                  ";
	m25[1]<- "            |                   .      .              |                  ";
	m25[2]<- "      ======|                                         |==================";
	m25[3]<- "      ______|      .                          .       |__________________";
	m25[4]<- "                                  .                                       ";
	m25[5]<- "                                                           .              ";
	m25[6]<- "               .      __    _<>______ .     _____                          ";
	m25[7]<- "                     /  \__/_________\ /-\ /   __|                       ";
	m25[8]<- "                    |====__ _________ |(O)|===|__      .               ";  
	m25[9]<- "       .             \__/  \_________/ \-/ \_____|                 .     ";
	m25[10]<- "                .            <>                                           ";
	m25[11]<- "                                      .                       .          ";
	m25[12]<- "                        .                            .                   ";
	
	
	
	
	Dimension m26[13];
	m26[0]<- "            |       .     ##              ##          |                  ";
	m26[1]<- "            |                   .      .              |                  ";
	m26[2]<- "            |                                         |                  ";
	m26[3]<- "      ======|      .                          .       |==================";
	m26[4]<- "      ______|                     .                   |__________________";
	m26[5]<- "                                                           .              ";
	m26[6]<- "               .      __    _<>______ .     _____                          ";
	m26[7]<- "                     /  \__/_________\ /-\ /   __|                       ";
	m26[8]<- "                    |====__ _________ |(O)|===|__      .               ";  
	m26[9]<- "       .             \__/  \_________/ \-/ \_____|                 .     ";
	m26[10]<- "                .            <>                                           ";
	m26[11]<- "                                      .                       .          ";
	m26[12]<- "                        .                            .                   ";
	
	
	
	
	Dimension m27[13];
	m27[0]<- "            |       .     ##              ##          |                  ";
	m27[1]<- "            |             ##    .      .  ##          |                  ";
	m27[2]<- "            |                                         |                  ";
	m27[3]<- "            |      .                          .       |                  ";
	m27[4]<- "      ======|                     .                   |==================";
	m27[5]<- "      ______|                                         |__________________";
	m27[6]<- "               .      __    _<>______ .     _____                          ";
	m27[7]<- "                     /  \__/_________\ /-\ /   __|                       ";
	m27[8]<- "                    |====__ _________ |(O)|===|__      .               ";  
	m27[9]<- "       .             \__/  \_________/ \-/ \_____|                 .     ";
	m27[10]<- "                .            <>                                           ";
	m27[11]<- "                                      .                       .          ";
	m27[12]<- "                        .                            .                   ";
	
	
	
	
	Dimension m28[13];
	m28[0]<- "            |       .     ##              ##          |                  ";
	m28[1]<- "            |             ##    .      .  ##          |                  ";
	m28[2]<- "            |             ##              ##          |                  ";
	m28[3]<- "            |      .                          .       |                  ";
	m28[4]<- "            |                     .                   |                  ";
	m28[5]<- "      ======|                                         |==================";
	m28[6]<- "      ______|  .      __    _<>______ .     _____     |__________________ ";
	m28[7]<- "                     /  \__/_________\ /-\ /   __|                        ";
	m28[8]<- "                    |====__ _________ |(O)|===|__      .                ";  
	m28[9]<- "       .             \__/  \_________/ \-/ \_____|                 .      ";
	m28[10]<- "                .            <>                                            ";
	m28[11]<- "                                      .                       .           ";
	m28[12]<- "                        .                            .                    ";
	
	
	
	
	Dimension m29[13];
	m29[0]<- "            |       .     ##              ##          |                  ";
	m29[1]<- "            |             ##    .      .  ##          |                  ";
	m29[2]<- "            |             ##              ##          |                  ";
	m29[3]<- "            |      .      ##              ##  .       |                  ";
	m29[4]<- "            |                     .                   |                  ";
	m29[5]<- "            |                                         |                  ";
	m29[6]<- "      ======|  .      __    _<>______ .     _____     |================== ";
	m29[7]<- "      ______|        /  \__/_________\ /-\ /   __|    |__________________";
	m29[8]<- "                    |====__ _________ |(O)|===|__      .                ";  
	m29[9]<- "       .             \__/  \_________/ \-/ \_____|                 .      ";
	m29[10]<- "                .            <>                                            ";
	m29[11]<- "                                      .                       .           ";
	m29[12]<- "                        .                            .                    ";
	
	
	
	
	Dimension m30[13];
	m30[0]<- "            |       .    ####            ####         |                      ";
	m30[1]<- "            |             ##    .      .  ##          |                      ";
	m30[2]<- "            |             ##              ##          |                      ";
	m30[3]<- "            |      .      ##              ##  .       |                      ";
	m30[4]<- "            |             ##      .       ##          |                      ";
	m30[5]<- "            |                                         |                      ";
	m30[6]<- "            |  .      __    _<>______ .     _____     |                       ";
	m30[7]<- "      ======|        /  \__/_________\ /-\ /   __|    |==================   ";
	m30[8]<- "      ______|       |====__ _________ |(O)|===|__     |__________________ ";
	m30[9]<- "       .             \__/  \_________/ \-/ \_____|                 .         ";
	m30[10]<- "                .            <>                                               ";
	m30[11]<- "                                      .                       .              ";
	m30[12]<- "                        .                            .                       ";
	
	
	
	
	Dimension m31[13];
	m31[0]<- "             _________________________________________                        ";
	m31[1]<- "            |            ####   .      . ####         |                      ";
	m31[2]<- "            |             ##              ##          |                      ";
	m31[3]<- "            |      .      ##              ##  .       |                      ";
	m31[4]<- "            |             ##      .       ##          |                      ";
	m31[5]<- "            |             ##              ##          |                      ";
	m31[6]<- "            |  .      __    _<>______ .     _____     |                       ";
	m31[7]<- "            |        /  \__/_________\ /-\ /   __|    |                     ";
	m31[8]<- "      ======|       |====__ _________ |(O)|===|__     |================== ";
	m31[9]<- "      ______|        \__/  \_________/ \-/ \_____|    |__________________   ";
	m31[10]<- "                .            <>                                               ";
	m31[11]<- "                                      .                       .              ";
	m31[12]<- "                        .                            .                       ";
	
	
	
	
	Dimension m32[13]; 
	m32[0]<- "                                                                            ";
	m32[1]<- "             _________________________________________                      ";
	m32[2]<- "            |            ####            ####         |                    ";
	m32[3]<- "            |      .      ##              ##  .       |                    ";
	m32[4]<- "            |             ##      .       ##          |                    ";
	m32[5]<- "            |             ##              ##          |                    ";
	m32[6]<- "            |  .      __  ##_<>______ .   ##_____     |                     ";
	m32[7]<- "            |        /  \__/_________\ /-\ /   __|    |                   ";
	m32[8]<- "            |       |====__ _________ |(O)|===|__     |                 "; 
	m32[9]<- "      ======|        \__/  \_________/ \-/ \_____|    |================== ";
	m32[10]<- "      ______|   .            <>                       |__________________  ";
	m32[11]<- "                                      .                       .            ";
	m32[12]<- "                        .                            .                     ";
	
	
	
	
	Dimension m33[13];
	m33[0]<- "                                                                             ";
	m33[1]<- "                                                                             ";
	m33[2]<- "             _________________________________________                       ";
	m33[3]<- "            |      .     ####            #### .       |                     ";
	m33[4]<- "            |             ##      .       ##          |                     ";
	m33[5]<- "            |             ##              ##          |                     ";
	m33[6]<- "            |  .      __  ##_<>______ .   ##_____     |                     ";
	m33[7]<- "            |        /  \_##_________\ /-\##   __|    |                    ";
	m33[8]<- "            |       |====__ _________ |(O)|===|__     |                  ";
	m33[9]<- "            |        \__/  \_________/ \-/ \_____|    |                    ";
	m33[10]<- "      ======|   .            <>                       |==================   ";
	m33[11]<- "      ______|                         .               |__________________  ";
	m33[12]<- "                        .                            .                      ";
	
	
	
	
	Dimension m34[13]; 
	m34[0]<- "                                                                             ";
	m34[1]<- "                                                                             ";
	m34[2]<- "                                                                             ";
	m34[3]<- "             _________________________________________                       ";
	m34[4]<- "            |            ####     .      ####         |                     ";
	m34[5]<- "            |             ##              ##          |                     ";
	m34[6]<- "            |  .      __  ##_<>______ .   ##_____     |                      ";
	m34[7]<- "            |        /  \_##_________\ /-\##   __|    |                    ";
	m34[8]<- "            |       |====_##_________ |(O)##==|__     |                   ";
	m34[9]<- "            |        \__/  \_________/ \-/ \_____|    |                    ";
	m34[10]<- "            |   .            <>                       |                     ";
	m34[11]<- "      ======|                         .               |==================  ";
	m34[12]<- "      ______|           .                            .|___________________ ";
	
	
	
	
	Dimension m35[13];
	m35[0]<- "                                                                         ";
	m35[1]<- "                                                                         ";
	m35[2]<- "                                                                         ";
	m35[3]<- "                                                                         ";
	m35[4]<- "                                                                         ";
	m35[5]<- "                                                                         ";
	m35[6]<- "                                                                         ";
	m35[7]<- "                                                                         ";
	m35[8]<- "                                                                         ";
	m35[9]<- "                                                                         ";
	m35[10]<- "                                                                        ";
	m35[11]<- "                                                                        ";
	m35[12]<- "                                                                        ";
	
	
	
	
	Dimension m36[13];
	m36[0]<- "           \_\       \ _______________________________ /        /_/      ";
	m36[1]<- "            | |       |           _________           |        | |       ";   
	m36[2]<- "            | |       |         //  _____  \\         |        | |       "; 
	m36[3]<- "            | |       |         |  /     \  |         |        | |       ";   
	m36[4]<- "            | |       |         | | \   / | |         |        | |       ";    
	m36[5]<- "            | |       |         | |       | |         |        | |       ";    
	m36[6]<- "            | |       |         | |       | |         |        | |       ";    
	m36[7]<- "            | |       |         | | /   \ | |         |        | |       ";    
	m36[8]<- "            | |       |         |  \_____/  |         |        | |       ";   
	m36[9]<- "            | |       |         \\_________//         |        | |       "; 
	m36[10]<- "           | |       |_______________________________|        | |       ";    
	m36[11]<- "           |_|      /                                 \       |_|       ";   
	m36[12]<- "          / /      /                                   \       \ \      ";
	
	
	
	
	Dimension m37[13];
	m37[0]<- "           \_\       \ _______________________________ /        /_/      ";
	m37[1]<- "            | |       |          _________            |        | |       ";    
	m37[2]<- "            | |       |        //  __*__  \\          |        | |       ";  
	m37[3]<- "            | |       |        |  /     \  |          |        | |       ";    
	m37[4]<- "            | |       |        | | \   / | |          |        | |       ";     
	m37[5]<- "            | |       |        | |       | |          |        | |       ";     
	m37[6]<- "            | |       |        | |       | |          |        | |       ";     
	m37[7]<- "            | |       |        | | /   \ | |          |        | |       ";     
	m37[8]<- "            | |       |        |  \_____/  |          |        | |       ";    
	m37[9]<- "            | |       |        \\____*____//          |        | |       ";  
	m37[10]<- "           | |       |_______________________________|        | |       ";     
	m37[11]<- "           |_|      /                                 \       |_|       ";    
	m37[12]<- "           / /      /                                   \      \ \      ";
	
	
	
	Dimension m38[13];
	m38[0]<- "           \_\       \ _______________________________ /        /_/      ";
	m38[1]<- "            | |       |          _________            |        | |       ";    
	m38[2]<- "            | |       |        //  _***_  \\          |        | |       ";  
	m38[3]<- "            | |       |        |  /     \  |          |        | |       ";    
	m38[4]<- "            | |       |        | | \   / | |          |        | |       ";     
	m38[5]<- "            | |       |        | |       | |          |        | |       ";     
	m38[6]<- "            | |       |        | |       | |          |        | |       ";     
	m38[7]<- "            | |       |        | | /   \ | |          |        | |       ";     
	m38[8]<- "            | |       |        |  \_____/  |          |        | |       ";    
	m38[9]<- "            | |       |        \\___***___//          |        | |       ";  
	m38[10]<- "           | |       |_______________________________|        | |       ";    
	m38[11]<- "           |_|      /                                 \       |_|       ";   
	m38[12]<- "          / /      /                                   \       \ \      ";
	
	
	
	
	Dimension m39[13];
	m39[0]<- "           \_\       \ _______________________________ /        /_/      ";
	m39[1]<- "            | |       |           _________           |        | |       ";   
	m39[2]<- "            | |       |         //  *****  \\         |        | |       "; 
	m39[3]<- "            | |       |        |  /     \  |          |        | |       ";   
	m39[4]<- "            | |       |        | | \   / | |          |        | |       ";    
	m39[5]<- "            | |       |        | |       | |          |        | |       ";    
	m39[6]<- "            | |       |        | |       | |          |        | |       ";    
	m39[7]<- "            | |       |        | | /   \ | |          |        | |       ";    
	m39[8]<- "            | |       |        |  \_____/  |          |        | |       ";   
	m39[9]<- "            | |       |         \\__*****__//         |        | |       "; 
	m39[10]<- "           | |       |_______________________________|        | |       ";    
	m39[11]<- "           |_|      /                                 \       |_|       ";   
	m39[12]<- "          / /      /                                   \       \ \      ";
	
	
	
	
	Dimension m40[13];
	m40[0]<- "           \_\       \ _______________________________ /        /_/      ";
	m40[1]<- "            | |       |           _________           |        | |       ";    
	m40[2]<- "            | |       |         // ******* \\         |        | |       ";  
	m40[3]<- "            | |       |        |  /     \  |          |        | |       ";    
	m40[4]<- "            | |       |        | | \   / | |          |        | |       ";     
	m40[5]<- "            | |       |        | |       | |          |        | |       ";     
	m40[6]<- "            | |       |        | |       | |          |        | |       ";     
	m40[7]<- "            | |       |        | | /   \ | |          |        | |       ";     
	m40[8]<- "            | |       |        |  \_____/  |          |        | |       ";    
	m40[9]<- "            | |       |         \\_*******_//         |        | |       ";  
	m40[10]<- "           | |       |_______________________________|        | |       ";    
	m40[11]<- "           |_|      /                                 \       |_|       ";   
	m40[12]<- "           / /      /                                   \      \ \      ";
	
	
	
	
	Dimension m41[13];
	m41[0]<- "           \_\       \ _______________________________ /        /_/       ";
	m41[1]<- "            | |       |           _________           |        | |        ";   
	m41[2]<- "            | |       |         //*********\\         |        | |        "; 
	m41[3]<- "            | |       |        |  /     \  |          |        | |        ";   
	m41[4]<- "            | |       |        | | \   / | |          |        | |        ";    
	m41[5]<- "            | |       |        | |       | |          |        | |        ";    
	m41[6]<- "            | |       |        | |       | |          |        | |        ";    
	m41[7]<- "            | |       |        | | /   \ | |          |        | |        ";    
	m41[8]<- "            | |       |        |  \_____/  |          |        | |        ";   
	m41[9]<- "            | |       |         \\*********//         |        | |        "; 
	m41[10]<- "           | |       |_______________________________|        | |        ";    
	m41[11]<- "           |_|      /                                 \       |_|        ";   
	m41[12]<- "           / /      /                                   \      \ \       ";
	
	
	
	
	Dimension m42[13];
	m42[0]<- "           \_\       \ _______________________________ /        /_/       ";
	m42[1]<- "            | |       |           _________           |        | |        ";   
	m42[2]<- "            | |       |         /***********\         |        | |        ";   
	m42[3]<- "            | |       |        |  /     \  |          |        | |        ";   
	m42[4]<- "            | |       |        | | \   / | |          |        | |        ";    
	m42[5]<- "            | |       |        | |       | |          |        | |        ";    
	m42[6]<- "            | |       |        | |       | |          |        | |        ";    
	m42[7]<- "            | |       |        | | /   \ | |          |        | |        ";    
	m42[8]<- "            | |       |        |  \_____/  |          |        | |        ";   
	m42[9]<- "            | |       |         \***********/         |        | |        ";   
	m42[10]<- "           | |       |_______________________________|        | |        ";    
	m42[11]<- "           |_|      /                                 \       |_|        ";   
	m42[12]<- "          / /      /                                   \       \ \       ";
	
	
	
	
	Dimension m43[13];
	m43[0]<- "           \_\       \ _______________________________ /        /_/       ";
	m43[1]<- "            | |       |           _________           |        | |        ";   
	m43[2]<- "            | |       |         /***********\         |        | |        ";   
	m43[3]<- "            | |       |        |*  /     \  *|        |        | |        ";     
	m43[4]<- "            | |       |        |  | \   / | |         |        | |        ";    
	m43[5]<- "            | |       |        |  |       | |         |        | |        ";    
	m43[6]<- "            | |       |        |  |       | |         |        | |        ";    
	m43[7]<- "            | |       |        |  | /   \ | |         |        | |        ";    
	m43[8]<- "            | |       |        |*  \_____/  *|        |        | |        ";     
	m43[9]<- "            | |       |         \***********/         |        | |        ";   
	m43[10]<- "           | |       |_______________________________|        | |        ";    
	m43[11]<- "           |_|      /                                 \       |_|        ";   
	m43[12]<- "          / /      /                                   \       \ \       ";
	
	
	
	
	Dimension m44[13];
	m44[0]<- "           \_\       \ _______________________________ /        /_/       ";
	m44[1]<- "            | |       |           _________           |        | |        ";   
	m44[2]<- "            | |       |         /***********\         |        | |        ";   
	m44[3]<- "            | |       |        |*  /     \  *|        |        | |        ";     
	m44[4]<- "            | |       |        |* | \   / | *|        |        | |        ";      
	m44[5]<- "            | |       |        |  |       |  |        |        | |        ";    
	m44[6]<- "            | |       |        |  |       |  |        |        | |        ";    
	m44[7]<- "            | |       |        |* | /   \ | *|        |        | |        ";      
	m44[8]<- "            | |       |        |*  \_____/  *|        |        | |        ";     
	m44[9]<- "            | |       |         \***********/         |        | |        ";   
	m44[10]<- "           | |       |_______________________________|        | |        ";    
	m44[11]<- "           |_|      /                                 \       |_|        ";   
	m44[12]<- "          / /      /                                   \       \ \       ";
	
	
	
	
	Dimension m45[13];
	m45[0]<- "           \_\       \ _______________________________ /       /_/        ";
	m45[1]<- "            | |       |           _________           |        | |        ";   
	m45[2]<- "            | |       |         /***********\         |        | |        ";   
	m45[3]<- "            | |       |        |*  /     \  *|        |        | |        ";          
	m45[4]<- "            | |       |        |* | \   / | *|        |        | |        ";      
	m45[5]<- "            | |       |        |* |       | *|        |        | |        ";      
	m45[6]<- "            | |       |        |* |       | *|        |        | |        ";      
	m45[7]<- "            | |       |        |* | /   \ | *|        |        | |        ";      
	m45[8]<- "            | |       |        |*  \_____/  *|        |        | |        ";     
	m45[9]<- "            | |       |         \***********/         |        | |        ";   
	m45[10]<- "            | |       |_______________________________|       | |        ";    
	m45[11]<- "            |_|      /                                 \      |_|        ";   
	m45[12]<- "           / /      /                                   \     \ \        ";
	
	
	
	
	Dimension m46[13];
	m46[0]<- "           \_\       \ _______________________________ /       /_/      ";
	m46[1]<- "            | |       |           *********           |        | |      ";    
	m46[2]<- "            | |       |      .  *************  .      |        | |      ";    
	m46[3]<- "            | |       |        **  /     \  **        |        | |      ";    
	m46[4]<- "            | |       |       .** | \   / | **        |        | |      ";     
	m46[5]<- "            | |       |    .   ** | .     | ** :      |        | |      ";     
	m46[6]<- "            | |       |        ** |       | **        |        | |      ";     
	m46[7]<- "            | |       |     .  ** | / . \ | **  .     |        | |      ";     
	m46[8]<- "            | |       |        **  \_____/  **        |        | |      ";   
	m46[9]<- "            | |       |       . *************  .      |        | |      ";   
	m46[10]<- "           | |       |__________***********__________|        | |      ";    
	m46[11]<- "           |_|      /                                 \       |_|      ";   
	m46[12]<- "          / /      /            .      .               \       \ \     ";
	
	
	
	
	Dimension m47[13];
	m47[0]<- "           \_\       \ _______________________________ /        /_/     ";
	m47[1]<- "            | |       |    ``      *********           |        | |     ";   
	m47[2]<- "            | |       |         ************* ``    .  |        | |     ";   
	m47[3]<- "            | |       |     ``  ***************        |        | |     ";   
	m47[4]<- "            | |       |        ***| ``     |*** .  ``  |        | |     ";    
	m47[5]<- "            | |       |   `    ***|   ``   |***        |        | |     ";    
	m47[6]<- "            | |       |        ***|        |*** .      |        | |     ";    
	m47[7]<- "            | |       |       ,***|  `     |***     `` |        | |     ";    
	m47[8]<- "            | |       |   ``    ***************        |        | |     ";   
	m47[9]<- "            | |       |     ``   *************  ``     |        | |     ";   
	m47[10]<- "           | |       |___________***********__________|        | |     ";    
	m47[11]<- "           |_|      /                `.               \        |_|     ";   
	m47[12]<- "           / /      /         `   `       `              \      \ \    ";
	
	
	
	
	Dimension m48[13];
	m48[0]<- "           \_\       \ ____#____*************#________ /        /_/     ";
	m48[1]<- "            | |       |        *  _________  *        |         | |     ";   
	m48[2]<- "            | |       | #     * ************* * `     |         | |     ";   
	m48[3]<- "            | |       |     . * *         # * *    #  |         | |     ";   
	m48[4]<- "            | |       |       * * . #      `* *.      |         | |     ";   
	m48[5]<- "            | |       |   `   * *     `     * *      #|         | |     ";   
	m48[6]<- "            | |       |  #   .* *         ` * *.      |         | |     ";   
	m48[7]<- "            | |       |       * * .  ``     * *  `    |         | |     ";   
	m48[8]<- "            | |       |    `  * *        #  * *       |         | |     ";   
	m48[9]<- "            | |       |  #    * ************* *       |         | |     ";   
	m48[10]<- "            | |       |_________*____________*__`__#__|        | |     ";    
	m48[11]<- "            |_|      /      #    ************          \       |_|     ";   
	m48[12]<- "           / /      /             `    ``     #         \       \ \    ";
	
	
	
	
	Dimension m49[13];
	m49[0]<- "           \_\       \ _______________________________ /        /_/    ";
	m49[1]<- "            | |       |           _________ #       . |   .     | |    ";   
	m49[2]<- "            | |     # |   .     /***********\         #         | |    ";   
	m49[3]<- "            | |       |         *           *         |         | |    ";   
	m49[4]<- "            | |    .  |         #    .      *         |         | |    ";   
	m49[5]<- "            | |       |         *           *         |         | |    ";   
	m49[6]<- "            | |       |     .   *           *         |#     .  | |    ";   
	m49[7]<- "            | |      #|         *        .  *     .   |         | |    ";   
	m49[8]<- "            | |       |  .      *           *         |         | |    ";   
	m49[9]<- "            | |       |         \**********#/         |    .    | |    ";   
	m49[10]<- "            | |   .   |_______________________________|        | |    ";    
	m49[11]<- "            |_|      /#                          #    #\       |_|    ";   
	m49[12]<- "           / /      / .  #                .         .   \       \ \   ";
	
	
	
	
	Dimension m50[13];
	m50[0]<- "           \_\       \ _______________________________ /        /_/   ";
	m50[1]<- "            | |       |           _________           |        | |    ";   
	m50[2]<- "            | |       |     #   //         \\     .   |        | |    "; 
	m50[3]<- "            | | #     |         |           |         |        | |    ";   
	m50[4]<- "            | |       |         |           |         |    #   | |    ";   
	m50[5]<- "            | |       |  .      |           |         |        | |    ";   
	m50[6]<- "            | |       |         |           |         |        | |    ";   
	m50[7]<- "            | |  .    |         |           |      #  |    `   | |    ";   
	m50[8]<- "            | |       |         |           |         |        | |    ";   
	m50[9]<- "            | |       |         \\_________//         |        | |    "; 
	m50[10]<- "           | |  #    |_________________________#_____|        | |    ";    
	m50[11]<- "           |_|      /                                 \   #   |_|    ";   
	m50[12]<- "           / /    # /         `                       # \      \ \   ";
	
	
	
	
	Dimension m51[13];
	m51[0]<- "           \_\       \ _#_____________________________ /        /_/   ";
	m51[1]<- "            | |       |           _________         . |         | |   ";  
	m51[2]<- "            | |       |         //         \\         |         | |   ";
	m51[3]<- "            | |    `  |         |           |         |         | |    ";  
	m51[4]<- "            | |       |         |           |         |         | |   ";
	m51[5]<- "           #| |       |         |           |         |         | |   ";
	m51[6]<- "            | |       |         |           |         | #       | |   ";
	m51[7]<- "            | |       |         |           |         |       . | |   ";
	m51[8]<- "            | |       |         |           |         |         | |   ";
	m51[9]<- "            | |       |   .     \\_________//         |   #     | |   ";
	m51[10]<- "           | |       |_______________________________|         | |   "; 
	m51[11]<- "           |_|      /                                 \        |_|   ";
	m51[12]<- "          / /      /#                              #   \       # \   ";
	
	
	
	
	Dimension m52[13];
	m52[0]<- "           \_\       \ _______________________________ /        /_/    ";
	m52[1]<- "            | |       |           _________           |         | |    ";   
	m52[2]<- "            | |       |         //         \\         |         | |    "; 
	m52[3]<- "            | |       |   .     |           |      .  |         | |    ";   
	m52[4]<- "            | |       |         |           |         |         | |    ";   
	m52[5]<- "            | |       |         |           |         |         | |    ";   
	m52[6]<- "        #   | |       |         |           |         |         | |    ";   
	m52[7]<- "            | |       |         |           |         |         | |    ";   
	m52[8]<- "            | |       |         |           |         |         | |    ";   
	m52[9]<- "            | |       |         \\_________//        #|         |#|    "; 
	m52[10]<- "           | |   .   |_______________________________|         | |    ";    
	m52[11]<- "           |_|      /                                 \        |_|    ";   
	m52[12]<- "           / /      /                                   \       \ \   ";
	
	
	
	
	Dimension m53[13];
	m53[0]<- "           \_\       \ _______________________________ /        /_/    ";
	m53[1]<- "            | |       |          _________           |          | |    ";   
	m53[2]<- "            | |       |        //         \\         |          | |    "; 
	m53[3]<- "            | |       |        |           |         |          | |    ";   
	m53[4]<- "            | |       |        |           |         |          | |    ";   
	m53[5]<- "            | |       |        |           |         |          | |    ";   
	m53[6]<- "            | |       |        |           |         |          | |    ";   
	m53[7]<- "            | |       |        |           |         |          | |    ";   
	m53[8]<- "            | |       |        |           |         |          | |    ";   
	m53[9]<- "       #    | |       |        \\_________//         |          | |    "; 
	m53[10]<- "           | |       |_______________________________|         | |    ";    
	m53[11]<- "           |_|      /                           #     \        |_|    ";   
	m53[12]<- "          / /      /                                   \        \ \   ";
	
	
	
	
	Dimension m54[13];
	m54[0]<- "           \_\       \ _______________________________ /        /_/   ";
	m54[1]<- "            | |       |          _________           |          | |   ";    
	m54[2]<- "            | |       |        //         \\         |          | |   ";  
	m54[3]<- "            | |       |        |           |         |          | |   ";    
	m54[4]<- "            | |       |        |           |         |          | |   ";    
	m54[5]<- "            | |       |        |           |         |          | |   ";    
	m54[6]<- "            | |       |        |           |         |          | |   ";    
	m54[7]<- "            | |       |        |           |         |          | |   ";    
	m54[8]<- "            | |       |        |           |         |          | |   ";    
	m54[9]<- "            | |       |        \\_________//         |          | |   ";  
	m54[10]<- "            | |       |_______________________________|        | |   ";     
	m54[11]<- "            |_|      /                                 \       |_|   ";    
	m54[12]<- "           / /      /                          #        \       \ \  ";
	
	
	
	
	Dimension m55[13];
	m55[0]<- "           \_\       \ _______________________________ /        /_/    ";
	m55[1]<- "            | |       |          _________           |          | |    ";   
	m55[2]<- "            | |       |        //         \\         |          | |    "; 
	m55[3]<- "            | |       |        |           |         |          | |    ";   
	m55[4]<- "            | |       |        |           |         |          | |    ";   
	m55[5]<- "            | |       |        |           |         |          | |    ";   
	m55[6]<- "            | |       |        |           |         |          | |    ";   
	m55[7]<- "            | |       |        |           |         |          | |    ";   
	m55[8]<- "            | |       |        |           |         |          | |    "; 
	m55[9]<- "            | |       |_______________________________|        | |    ";    
	m55[10]<- "            |_|      /                                 \       |_|    ";   
	m55[11]<- "           / /      /                                   \       \ \   ";
	m55[12]<-"                                                                       ";
	
	
	
	Dimension m56[13];
	m56[0]<- "                                                                         ";
	m56[1]<- "                                                                         ";
	m56[2]<- "                                                                         ";
	m56[3]<- "                                                                         ";
	m56[4]<- "                                                                         ";
	m56[5]<- "                                                                         ";
	m56[6]<- "                                                                         ";
	m56[7]<- "                                                                         ";
	m56[8]<- "                                                                         ";
	m56[9]<- "                                                                         ";
	m56[10]<-"                                                                         ";
	m56[11]<-"                                                                         ";
	m56[12]<-"                                                                         ";
	
	
	
	esperar 2 Segundos;
	para i<-0 hasta 12 con paso 1 Hacer
		escribir ta[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir tb[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir tc[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir td[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir te[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir tf[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir tg[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir th[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir ti[i];
	FinPara
	esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir tj[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir tk[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir tl[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir tm[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	para i<-0 hasta 12 con paso 1 Hacer
		escribir tn[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir to[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir tp[i];
	FinPara
	esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir tq[i];
	FinPara
	esperar 150 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir tr[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir ts[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir tt[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir tu[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir tv[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir tw[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir tx[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir ty[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir tz[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir ua[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	para i<-0 hasta 12 con paso 1 Hacer
		escribir ub[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir uc[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	para i<-0 hasta 12 con paso 1 Hacer
		escribir ud[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir ue[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir uf[i];
	FinPara
	esperar 300 Milisegundos;
	Borrar Pantalla;
	para i<-0 hasta 12 con paso 1 Hacer
		escribir ug[i];
	FinPara
	esperar 300 Milisegundos;
	Borrar Pantalla;
	para i<-0 hasta 12 con paso 1 Hacer
		escribir uh[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir ui[i];
	FinPara
	esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir uj[i];
	FinPara
	esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir uk[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir ul[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir um[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir un[i];
	FinPara
	esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir uo[i];
	FinPara
	esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir up[i];
	FinPara
	esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir uq[i];
	FinPara
	esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir ur[i];
	FinPara
	esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t1[i];
	FinPara
	esperar 2 Segundos;	
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t2[i];
	FinPara
	esperar 1.5 Segundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t3[i];
	FinPara
	esperar 2 Segundos;;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t4[i];
	FinPara
	esperar 2.5 Segundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t5[i];
	FinPara
	esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t6[i];
	FinPara
	esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t7[i];
	FinPara
	esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t8[i];
	FinPara
	esperar 300 Milisegundos;
	Borrar Pantalla;
	
	esperar 300 Milisegundos;
	Borrar Pantalla;
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t9[i];
	FinPara
	esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t10[i];
	FinPara
	esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t11[i];
	FinPara
	esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t12[i];
	FinPara
	
	esperar 300 Milisegundos;
	Borrar Pantalla;
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t13[i];
	FinPara
	esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t14[i];
	FinPara
	esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t15[i];
	FinPara
	
	esperar 300 Milisegundos;
	Borrar Pantalla;
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t16[i];
	FinPara
	
	esperar 300 Milisegundos;
	Borrar Pantalla;
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t17[i];
	FinPara
	
	esperar 300 Milisegundos;
	Borrar Pantalla;
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t18[i];
	FinPara
	
	esperar 300 Milisegundos;
	Borrar Pantalla;
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t19[i];
	FinPara
	
	esperar 300 Milisegundos;
	Borrar Pantalla;
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t20[i];
	FinPara
	
	esperar 300 Milisegundos;
	Borrar Pantalla;
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t20a[i];
	FinPara
	
	esperar 100 Milisegundos;
	Borrar Pantalla;
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t21[i];
	FinPara
	
	esperar 300 Milisegundos;
	Borrar Pantalla;
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t22[i];
	FinPara
	
	esperar 300 Milisegundos;
	Borrar Pantalla;
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t23[i];
	FinPara
	
	esperar 300 Milisegundos;
	Borrar Pantalla;
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t24[i];
	FinPara
	esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t25[i];
	FinPara
	esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t26[i];
	FinPara
	esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t27[i];
	FinPara
	
	esperar 300 Milisegundos;
	Borrar Pantalla;
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t28[i];
	FinPara
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t29[i];
	FinPara
	
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t30[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t31[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t32[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t33[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t34[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t35[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t36[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t37[i];
	FinPara
	Esperar 100 Milisegundos;
	Borrar Pantalla;
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t38[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t39[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t40[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t41[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t42[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t43[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t44[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t45[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t46[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t47[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t48[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t49[i];
	FinPara
	Esperar 100 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t50[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t51[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t52[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t53[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t54[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t55[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t56[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t57[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t58[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t59[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t60[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t61[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t62[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir t63[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir g1[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir g2[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir g3[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir g4[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir g5[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir g6[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir g7[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir g8[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir g9[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir g10[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir g11[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir g12[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir g13[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir g14[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir g15[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir g16[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir g17[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir g18[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir g19[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir g20[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir g21[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j1[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j2[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j3[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j4[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j5[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j6[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j7[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j8[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j9[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j10[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j11[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j12[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j13[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j14[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j15[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j16[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j17[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j18[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j19[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j20[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j21[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j22[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j23[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j24[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j25[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j26[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j27[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j28[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j29[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j30[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j31[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j32[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j33[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j34[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j35[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j36[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j37[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j38[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j39[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j40[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j41[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j42[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j43[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j44[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j45[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j46[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j47[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j48[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j49[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j50[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j51[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j52[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j53[i];
	FinPara
	Esperar 300 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j54[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j55[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j56[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j57[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j58[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j59[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j61[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j62[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j63[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j64[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j65[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j66[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j67[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j68[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j69[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j70[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j71[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j72[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j73[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j74[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j75[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j76[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j77[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j78[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j79[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j80[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j81[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j82[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j83[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j84[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j85[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j86[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j87[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j88[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j89[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j90[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j91[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j92[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j93[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j94[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j95[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j96[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j97[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j98[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j99[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j100[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j101[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j102[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j103[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir j104[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m1[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m2[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m3[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m4[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m5[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m6[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m7[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m8[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m9[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m10[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m11[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m12[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m13[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m14[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m15[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m16[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m17[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m18[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m19[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m20[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m21[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m22[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m23[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m24[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m25[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m26[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m27[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m28[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m29[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m30[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m31[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m32[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m33[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m34[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m35[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m36[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m37[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m38[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m39[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m40[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m41[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m42[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m43[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m44[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m45[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m46[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m47[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m48[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m49[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m50[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m51[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m52[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m53[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m54[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m55[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	para i<-0 hasta 12 con paso 1 Hacer
		escribir m56[i];
	FinPara
	Esperar 200 Milisegundos;
	Borrar Pantalla;
	
	
	Dimension instrucciones[5];
	instrucciones[0]<-"                                                                          ______________________________________ ";
	instrucciones[1]<-"                                                                         |  X: para disparar                    |";
	instrucciones[2]<-"                                                                         |  A: para desplazarte a la izquierda  |";
	instrucciones[3]<-"                                                                         |  D: para desplazarte a la derecha    |";
	instrucciones[4]<-"                                                                        |______________________________________|";
	
	Dimension logodeljuego[16];
	logodeljuego[0]<-"                                                             _________________      ____         __________  *    *   *   *   *    ";
	logodeljuego[1]<-"                               *       *     *              /                 |    /    \    .  |          \    *   *   *   *   *  ";
	logodeljuego[2]<-"                                    *             *        /    ______   _____| . /      \      |    ___    |*    *   *   *   *  * ";
	logodeljuego[3]<-"                                                           \    \    |   |       /   /\   \     |   |___>   |  *   *   *   *   *   ";
	logodeljuego[4]<-"                                          *                 \    \   |   |      /   /__\   \  . |         _/ *   *   *   *   *   * ";
	logodeljuego[5]<-"                                *                    _______      |  |   |     /   |  |   | \   |   |\    \_______   *   *   *     ";
	logodeljuego[6]<-"                                                    |            /   |   |    /    ______    \  |   | \           |*   *   *   *  *"; 
	logodeljuego[7]<-"                                                    |___________/    |___|   /____/      \____\ |___|  \__________|  *   *   *   * ";
	logodeljuego[8]<-"                                 .        *           ____    __  . _____   ____      .  __________   .  _________ *   *   *   *   "; 
	logodeljuego[9]<-"                                                     \    \  /  \  /    /  /    \       |          \    /         |  *   *   *   * ";
	logodeljuego[10]<-"                                                     \    \/    \/    /  /      \      |    ___    |  /    ______|*   *   *   *   ";
	logodeljuego[11]<-"   *     *      *     *    *    *     *     *    *  * \              /  /   /\   \ .   |   |___>   |  \    \    *   *   *   *   * ";
	logodeljuego[12]<-"*     *     *     *     *    *     *     *     *   *   \            /  /   /__\   \    |         _/.   \    \ *   *   *   *   *   ";                
	logodeljuego[13]<-"   *     *      *     *   *     *     *     *    *   *  \    /\    /  /            \   |   |\    \______>    |  *   *   *   *   * ";
	logodeljuego[14]<-"      *     *     *     *    *     *     *     *   *  *  \  /  \  /  /    ______    \  |   | \              / *   *   *   *   *   ";
	logodeljuego[15]<-"   *     *     *     *    *     *     *     *    *   *  * \/    \/  /____/      \____\ |___|  \____________/*   *   *   *   *   * "; 
	
	Dimension cadena1[2];
	cadena1[0]<-"      *     *     *     *     *     *     *     *     *      *      *     *     *      *       *     *     *    *    * ";
	cadena1[1]<-"  *      *     *     *     *     *     *     *     *     *       *     *     *      *      *      *      *    *    * ";
	
	
	
	//Ingreso las imagenes-ascii de las naves como vectores por lineas a un valor
	Dimension wing[10];
	wing[0]<-"          __           __________           ___   ";
	wing[1]<-"          \ \_________\/\ ;\_\-\/___________\  \  ";
	wing[2]<-"           (O)]]]]]]_\___\_##_ \##____\___[[[[(O) ";
	wing[3]<-"              _______/____\___\ \___/________     ";
	wing[4]<-"            /\______(O)\___ \|\_\_____(O)___/     ";
	wing[5]<-"            \_\           \- \          \ \     ";
	wing[6]<-"             \ \              \-\        \ \    ";
	wing[7]<-"              \ \              \ \        \ \   ";
	wing[8]<-"               \ \              \-\       (?))  "; 
	wing[9]<-"               ((?)              (O)            ";  
	
	dimension hm2[15];
	hm2[0]<-"             _/____\_                                      ";   
	hm2[1]<-"       _.,--** |^ | **z.__                                 "; 
	hm2[2]<-"      /_/^ ___\|  | _/o\  `-._                             ";
	hm2[3]<-"    _/  ]. L_| | .|  \_/_  . _`--._                        ";
	hm2[4]<-"   /_~7  _ .  |. | /] \ ]. (_)  .  --.--                   "; 
	hm2[5]<-"  |__7~.(_)_ []|+--+|/____T_____________L|                 ";
	hm2[6]<-"  |__|  _^(_) /^   __\____ _   _|                           ";
	hm2[7]<-"  |__| (_){_) J ]K{__ L___ _   _]                          ";
	hm2[8]<-"  |__| . _(_) \v     /__________|________                  ";
	hm2[9]<-"  l__l_ (_). []|+-+-<\^   L  . _   - ---L|                 ";  
	hm2[10]<-"  \__\    __. |^l  \Y] /_]  (_) .  _,---                  "; 
	hm2[11]<-"    \~_]  L_| | .\ .\\/~.    _,--**                       ";
	hm2[12]<-"     \_\ . __/|  |\  \`-+-<**                             ";
    hm2[13]<-"       ----._|J__L|X o~~|[\\      Halc?n Milenario  ";
	hm2[14]<-"              \____/ \___|[//                              ";
	
	
	Dimension hm[15];	
	hm[0]<-"                 __   __            ";
	hm[1]<-"                /?|   |?\           ";
	hm[2]<-"               /  |   |  \          ";
	hm[3]<-"              /   |   |   \    _    ";
	hm[4]<-"             /   _|   |_   \  /?\   ";
	hm[5]<-"            /  --~|   |--~  \| _ |  ";
	hm[6]<-"           /.~ _\ |   |  /   |   |  ";
	hm[7]<-"          / `--`\ |   | /  _.?___/  ";
	hm[8]<-"         /        +---+  \  _.-~?   ";
	hm[9]<-"         =---.__ /  #  \__---=?     ";
	hm[10]<-"        [:::::|   (_)  |::::::]     ";
	hm[11]<-"         =--~~~~\     /~------|      ";
	hm[12]<-"        /\------/`---?\-------/      ";
	hm[13]<-"        \ \____/       \ ____/      ";
	hm[14]<-"         \____/.________\___/      ";
	
	
	//faltan agregar mas naves
	
	
	Repetir
		a<-" ";
		b<-" ";
		//Escribe el logo en movimiento
		para i<-0 hasta 15 Hacer
			Borrar Pantalla;
			para j<-i hasta 12 Hacer
				escribir " ";
			FinPara
			para j<-0 hasta 15 Hacer 
				escribir logodeljuego[j];
			FinPara
			esperar 200 Milisegundos;
		FinPara
		escribir "";
		
		//pedimos al usuario que ingrese tecla para continuar
		escribir "                                                                <<<PRESIONE UNA TECLA PARA CONTINUAR>>> ";
		Esperar Tecla;
		//se inicia una cuenta regresiva de 5 segundos
		para i<-1 hasta 4 Hacer
			Borrar Pantalla;
			escribir "                                                                                           INICIO en : ", 4-i;
			esperar 1 Segundos;
		FinPara
		borrar pantalla;
		
		escribir "                                                               *****************************************************";
		escribir "                                                               ========================== Nivel 1===================";
		esperar 1 Segundos;
		cadena2<-"...............................................................................................................................";
		
		//con el valor de i inicializado en 1, realizar? el siguiente proceso hasta 75 veces
		para i<-1 hasta 75 Hacer
			//imprimira las cadenas 1  y 2(el cielo), luego segun el valor de i un mensaje
			Escribir cadena1[0];
			Escribir cadena1[1];
			Escribir cadena2;
			Escribir "";
			escribir "";
			si i<30 Entonces
				escribir "despues de la invasion a nuestro planeta...";
				Escribir "";
			SiNo
				si i<55 Entonces
					escribir "salimos en busca de los traidores...";
					Escribir "";
				FinSi
			FinSi
			// la variable a contiene un espacio, se escribira antes del vector imagen para generar el movimiento
			para j<-0 hasta 14 Hacer
		    	escribir a, hm2[j];
			FinPara
			escribir cadena2;
			escribir cadena1[0];
			escribir cadena1[1];
			//le doy mas espacios a la variable "a" con la concatenar
			a<-concatenar(a," ");
			esperar 72 Milisegundos;
			Borrar Pantalla;
			//espera los 72milisegundos acto seguido borra la pantalla, crea movimiento hacia la derecha
		FinPara
		m<-"";
		g<-"  ";
		a<-" ";
		//Genera una cantidad de espacios al azar para "m"
		puntos<-0;
		numx<-azar(74);
		
		para l<-1 hasta numx Hacer
			m<-Concatenar(m," ");
		FinPara
		
		//Sigue con la historia de juego, y pido nick al usuario, para llamarlo asi todo el game
		//se dan instruccion y para seguir el usuario debera apretar una tecla para segurarnos que haya leido
		escribir "                                                                                    ________   ___   ____                                       ";
		escribir "                                                                                   / __   __| / _ \ |  _ \                                      ";
		escribir "                                                                             ______> \ | |   |  _  ||    /_____________________________          ";
		escribir "                                                                            / _______/ |_|   |_| |_||_|\______________________________ \         ";
		escribir "                                                                           / /                                                        \ \        ";
		escribir "                                                                          | |                                                          | |       ";
		escribir "                                                                          | |                Soldado, Ingrese su Alias o Nick          | |       ";
		Escribir "                                                                          | |                                                          | |       ";
	    escribir "                                                                           \ \____________________________    _   ___   ____   _______/ /        "; 
		escribir "                                                                            \___________________________  |  | | / _ \ |  _ \ / _______/         ";
		escribir "                                                                                                        | |/\| ||  _  ||    / > \               "; 
		escribir "                                                                                                         \_/\_/ |_| |_||_|\_\|__/                ";
		leer nombre;
		Escribir "                                                                                           <<<PRESIONE UNA TECLA PARA CONTINUAR>>>";
		Esperar Tecla;
		
		Borrar Pantalla;
		
		
		escribir "                                                                                    ________   ___   ____                                       ";
		escribir "                                                                                   / __   __| / _ \ |  _ \                                      ";
		escribir "                                                                             ______> \ | |   |  _  ||    /_____________________________          ";
		escribir "                                                                            / _______/ |_|   |_| |_||_|\______________________________ \         ";
		escribir "                                                                           / /                                                        \ \        ";
		escribir "                                                                          | |                                                          | |       ";
		Escribir "                                                                          | |                                                          | |       ";
		escribir "                                                                          | | Soldado  ", nombre,"  Las fuerzas del imperio contratacan| |       ";
		escribir "                                                                          | |            Hemos localizado la nave enemiga,             | |       ";
		escribir "                                                                          | |            su primera misi?n es derribarla               | |       ";
		escribir "                                                                          | |                                                          | |       ";
		escribir "                                                                          | |                                                          | |       ";
		escribir "                                                                          | |                                                          | |       ";
		escribir "                                                                           \ \____________________________    _   ___   ____   _______/ /        "; 
		escribir "                                                                            \___________________________  |  | | / _ \ |  _ \ / _______/         ";
		escribir "                                                                                                        | |/\| ||  _  ||    / s \               "; 
		escribir "                                                                                                         \_/\_/ |_| |_||_|\_\|__/               "; 
		escribir "";
		Escribir "                                                                                             <<<PRESIONE UNA TECLA PARA CONTINUAR>>>";
		Esperar Tecla;
		
		
		Borrar Pantalla;
		
		//indico las instrucciones de juego
		Escribir "                                                                                         Instrucciones:";
		para l<-0 hasta 4 Hacer
			Escribir instrucciones[l];
			esperar 2 Milisegundos;
		FinPara
		
		//espera tecla para continuar y que se borre pantalla
		Escribir "                                                                            <<<PRESIONE UNA TECLA PARA CONTINUAR>>>";
		Esperar Tecla;
		Borrar Pantalla;
		//Estructura repetir, por si el usuario desea utilizar nuevamente sin tener que regresar al menu principal
		
		Repetir
			//escribir la puntuaci?n
			b<-" ";
			escribir "                                                                                 ----------------------------";
			Escribir "                                                                                 #  PUNTUACION: ",puntos," #";
			Escribir "                                                                                 ----------------------------";
			//escribe la cadena de caracteres para el cielo
			Escribir cadena1[0];
			Escribir cadena1[1];
			Escribir cadena2;
			//escribe a la nave que utiliza el usuario
			para j<-0 hasta 9 Hacer
				escribir m, wing[j];
			FinPara
			//escribe la variable 'a' que en este caso es un espacio junto a la variable 'b' que tambi?n contiene un espacio
			para j<-1 hasta 10 Hacer
				escribir a,b;
			FinPara
			
			//escribe la variable m, que se genero una cantidad de espacios al azar para que tenga distintas posiciones aleatorias
			//seguido de la nave enemiga
			para j<-0 hasta 14 Hacer 
				escribir a, hm[j];
			FinPara
			
			//escribe las cadenas para el cielo
			Escribir cadena2;
			Escribir cadena1[0];
			Escribir cadena1[1];
			Escribir "";
			//leo respuesta del usuario
			leer resp;
			// si el user ingresa 'a' entonces nuestra nave se mover? la izquierda de la pantalla 12 espacios
			si resp="a" o resp="A" Entonces
				a<-Subcadena(a,12,longitud(a));
			SiNo
				// si el user ingresa'd' nuestra nave se mover? 12 espacios a la derecha de la pantalla
				si resp="d" o resp="D" Entonces
					a<-Concatenar(a,"            ");
				FinSi
				//si el usuario ingresa 'x', se mostraran los disparos
				si resp="x" o resp="X" Entonces
					//asignaremos espacios y un aterisco a la variable b para que haga disparos
					b<-"                       *"; //Con esto regulo la direccion del disparo
					Borrar Pantalla;
					//ahora reescribo los puntos
					Escribir "";
					Escribir "";
					Escribir "";
					Escribir cadena1[0];
					Escribir cadena1[1];
					escribir cadena2;
					para j<-0 hasta 9 Hacer
						Escribir a, wing[j];
					FinPara
					para j<-1 hasta 5 Hacer //con esto regulas la longitud del disparo, es decir 'b'
						Escribir a,b;
					FinPara
					para j<-0 hasta 14 Hacer 
						escribir a, hm[j];
					FinPara
					escribir cadena2;
					escribir cadena1[0];
					escribir cadena1[1];
					esperar 200 Milisegundos;
					
					//cuando muestra los disparos contamos los puntos
					// cada acierto suma 10 puntos
					// para ello concatenamos a y b, junto las cadenas m y nave enemiga y comparamos sus longitudes
					// entonces si la longitud de los disparos est? dentro del espacio enemigo, sumara 10 puntos
					resul1<-Concatenar(a,b);
					resul2<-Concatenar(m,wing[9]);
					si Longitud(resul1)<Longitud(resul2) y Longitud(resul1)>Longitud(m) Entonces
						puntos<-puntos+10;
					FinSi
					//restablezco nueva posici?n para m al azar
					m<-" ";
					numx<-azar(70);
					para l<-1 hasta numx Hacer
						m<-Concatenar(m, " ");
						
					FinPara
				FinSi
			FinSi
			Borrar Pantalla;
			Escribir "";
			//el nivel finaliza cuando el usuario logre 180 puntos	
			
		Hasta Que puntos = 180
		//aca muestro resultados del nivel y posibles intruccionespara un nivel 2
		
		Escribir "                                                                                     ---   NIVEL 1 COMPLETADO      -";
		Escribir "                                                                                         *PUNTUACION:", puntos, "*";
		Escribir "                                                                                     ------------------------------";
		Esperar 2 Segundos;
		Borrar Pantalla;
		
		//verifica si desea seguir jugando
		escribir "                                                                                    ________   ___   ____                                       ";
		escribir "                                                                                   / __   __| / _ \ |  _ \                                      ";
		escribir "                                                                             ______> \ | |   |  _  ||    /_____________________________          ";
		escribir "                                                                            / _______/ |_|   |_| |_||_|\______________________________ \         ";
		escribir "                                                                           / /                                                        \ \        ";
		escribir "                                                                          | |                     Te gusto el demo?                    | |       ";
		Escribir "                                                                          | |                                                          | |       ";
		escribir "                                                                          | | Soldado ",nombre,"Si desea continuar con la mision       | |       ";
		escribir "                                                                          | |             Deberas contactarte con el creador para      | |       ";
		escribir "                                                                          | |             adquiriar la version Full                    | |       ";
		escribir "                                                                          | |            digite s, si desea finalizar digite n         | |       ";
		escribir "                                                                          | |                                                          | |       ";
		escribir "                                                                          | |                                                          | |       ";
		escribir "                                                                          | |                                                          | |       ";
		escribir "                                                                          | |                                                          | |       ";
		escribir "                                                                           \ \____________________________    _   ___   ____   _______/ /        "; 
		escribir "                                                                            \___________________________  |  | | / _ \ |  _ \ / _______/         ";
		escribir "                                                                                                        | |/\| ||  _  ||    / > \               "; 
		escribir "                                                                                                         \_/\_/ |_| |_||_|\_\|__/               "; 
		
		Repetir
			leer resp;
		Hasta Que resp="s" o resp= "n"
		
		
	Hasta Que resp="n"
	
FinSubProceso







Proceso GuerraDeLasGalaxias
	definir tecla1 Como Entero;; 
	Escribir "*******************************************";
	Escribir "**BIENVENIDOS AL POOL DE JUEGOS DE LA UTN**";
	Escribir "*******************************************";
	Escribir "SELECCIONE EL JUEGO QUE DESEE JUGAR";
	Escribir "";
	Escribir "--------------------------";
	Escribir "1. STAR WARS";
	Escribir "--------------------------";
	Escribir "2. TATETI";
	Escribir "--------------------------";
	Escribir "3. BUSCAMINAS";
	Escribir "--------------------------";
	Escribir "4. AVENTURA GRÁFICA - TRIVIA";
	Escribir "--------------------------";
	Escribir "5. CARRERA DE AUTOS";
	Escribir "--------------------------";
	Leer tecla1;
	Segun tecla1 Hacer
		1:
			introGame(1);
		2:
			jugar(juego);
		3:
			busca_minas(usuario);
		4:
			Trivia(General);
		5: 
			CarreraAutos(AutosCarreras);
			
	FinSegun
	
	
FinProceso
