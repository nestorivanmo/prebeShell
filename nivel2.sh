#!/bin/bash

CONT=0
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
STD='\033[0;0;39m'
CYAN='\033[1;96m'
############################
# PREGUNTAS A MODIFICAR


runo(){
echo "Spider Man"
}

rdos(){ 
echo "Batman"
}

rtres(){ 
echo "Iron Man"
}

rcuatro(){ 
echo "Black Panter"
}

rcinco(){ 
echo "Ant-Man"
}


pausa(){

 read -p "											Siguiente Nivel  [Enter]"
}






correcto(){

let CONT=CONT+2
#echo Puntaje: $CONT

}

mediavida(){

let CONT=CONT-1
#echo Puntaje: $CONT

}

incorrecto(){
let CONT=CONT-1

}
uno(){
echo -e "											${GREEN}¡Correcto! ${STD}" && sleep 0.5
correcto
source  nivel3.sh
#pausa
}

dos(){
echo -e "											${YELLOW}¡Incorrecto! ${STD}" && sleep 0.5
incorrecto
pausa
source  nivel3.sh
}

tres(){
echo -e "											${YELLOW}¡Incorrecto! ${STD}" && sleep 0.5
incorrecto        
pausa
#source  nivel2.sh
}

cuatro(){
echo -e "											${YELLOW}¡Incorrecto! ${STD}" && sleep 0.5
        
incorrecto
#pausa
}

cinco(){
echo -e "                                                                                       ${YELLOW}¡-1! ${STD}" && sleep 0.5
mediavida

#pausa
}

Salir(){
echo -e "                                                                                       ${CYAN}¡BYE! ${STD}" && sleep 0.5
#pausa
}



menu_pregunta() {
	clear
	echo "











		    		 		  				    ◯ -◯ -◯ -◯ -◯ -◯ -◯ 

											PUNTAJE: $CONT
		";
	echo " 			 						          ¿Qué personaje es?: 
			";
	echo " 										     ◯ -◯ -◯ -◯ -◯ -◯ -◯ 

			 ";
	echo "										     1." $(runo)
	echo "										     2." $(rdos)
	echo "										     3." $(rtres)
	echo "										     4." $(rcuatro)
	echo "										     5. Pista (-1 vida)"
	echo "
												     0.  Salir "  
}


imprime1(){
clear
echo -e "













";
echo -e "               ▓████▓█▓████▓  "
echo -e "            ██▓ ▒      ░░ ▓██  "
echo -e "           ▒██   ▓░░░░░ ▓▓   ██   "
echo -e "          ▒█  ░▒  ░     ▒ ░░▒ ▒█   "
echo -e "          █  ▓▓   █░░░░▓▓   █  ██   "
echo -e "         ██ ░░▒ ░▒▓░   ▒▒▒ ▒ ░  █  "
echo -e "         █▒█  ░█░  ▒   ▒  ▒█  ▒██▒  "
echo -e "         █▓██ ░▓   ▓  ▒   ▒ ░ ██▓█  "
echo -e "         █████  ▓░░█▒░█░░▓   █████  "
echo -e "         ██░ ██ ░▒  ░ ░ ▓░  ██ ███  "

sleep 2s
}

imprime2(){
clear
echo -e "













";
echo -e "         ███  ██▒ ░ ▒▒▒░  ███  ███ "
echo -e "         ███   ▒███▓▒▒▓▒███    ██▓ "
echo -e "         ▓███    ▓██▒█░██     ███░ "
echo -e "          █ ██  ███ ▒▓ ▓██▒  ██ █ "
echo -e "          █  ████ ░░▒▓░  ▒████ ██ "
echo -e "          ▒█ ░▒  ▒  ░ ░ ░▒░▒▒ ▒█ "
echo -e "           ██   ▒░ ▓▒░█▒  ░░  ██ "
echo -e "            █  ▓░  ▒  ░░ ░░▒░▓█  "
echo -e "           ░██▓  ░▓▓░░░█▒   ▒█▒  "

sleep 2s
}

imprime3(){
clear
echo "  
	
	                                                          NIVEL: 2 " 
sleep 2s
echo -e "














";

echo -e "            ▓█▓█   ▒     ▒  ░██▒ "
echo -e "            █▒░▒█▓▓░  ░  ░▓▓█▒▓█ "
echo -e "           ▒█ ▒  ███▒░░░▒███   ██ "
echo -e "         ▒██  █░░░  █▓▓▓█░ ░░░▓ ██▓ "
echo -e "   ░▓▓▓████░ ▒  ░▓  ▒░  ▒░ ▓  ░▒ ▓███▒░  "
echo -e "   ░▓▒█▓░   ▒▓░░▒░  ▒   ▒  ░▓░░▒▒   █████░  "
echo -e "    ░░ ░░░░▒░   ▓ ░░▓░░░▓▒  ░▒   ▒▒▒   ░▓  "
echo -e "   ░▒░░   ▓▒░░░▓▒   ▓   ░▒ ░░░▓▓░  ░▒▒░▒  "
echo -e "       ░▓▓░   ░▒   ▒▓ ░░░▓     ▒▓░░░░░▒▒░  "
echo -e "       ▒▒   ░▒█░░░ ▒░ ░░░▒▒░▒░░ ░▒▓     ░"
sleep 2s

}



leer_respuesta(){
        local elige
        read -p "
                                                                                        Opciones [ 0 - 4 ]: " elige
        case $elige in
		1) uno ;;
		2) dos ;;
		3) tres ;;
                4) cuatro ;;
		5) cinco;;
		0) Salir;
		exit;;
		*) echo -e "											${RED}Error ${STD}" && sleep 0.5
	esac
}


while true
do
	case $CONT in 

	0) imprime1;
	menu_pregunta;
	leer_respuesta;;
	-1) imprime2;
	menu_pregunta;
        leer_respuesta;;
	-2) imprime3;
        menu_pregunta;
        leer_respuesta;
	echo "game over";
	exit;;
	esac

done


