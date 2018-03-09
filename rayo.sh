#!/bin/bash



uno(){
echo -e "											${WHITE}Disparos de Cabezas ${STD}" && sleep 0.5
source  shoot.sh
#pausa
}

dos(){
echo -e "											${WHITE}Encontrando la Razón ${STD}" && sleep 0.5
source avi.sh
#pausa
}

Salir(){
echo -e "                                                                                       ${CYAN}¡BYE! ${STD}" && sleep 0.5
#pausa
}

 RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
STD='\033[0;0;39m'
CYAN='\033[1;96m'
IBlUE='\033[0;104m'
WHITE="\033[1;97m"


menu_pregunta() {
	clear
	echo "



		";
echo -e " ${GREEN}				 	 _____  __  	 _______ ______   _____       _   		${STD}  "
echo -e " ${GREEN}	  				(_____) | | 	(_______) _____) / ___ \     / |   	${STD}    "
echo -e " ${GREEN}			   		    | | | |  	| /  ___| |        | | 	\   / /  	${STD}   "
echo -e " ${GREEN}			   	   	    | | | |   | |  ___)|  | (___) |   | |   \ \   	${STD}  "
echo -e " ${GREEN}				  	 ___| | | |___| | |____|  \____/| |___| |____) )  	${STD}  "
echo -e " ${GREEN}					(____/   \______ |_______)_____/ \_____(______/   	${STD} "
                                               
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "


			 
	echo -e "	${YELLOW}					   1. Disparo de Cabezas ${STD} " 
	echo -e "	${YELLOW}					   2. Nueva Razón   	${STD}" 
	echo -e "       ${YELLOW}                                            3. Salir   		${STD}" 
}	


leer_respuesta(){
        local elige
        read -p "                                     		    Opciones [ 1 - 3 ]:  " elige
        case $elige in
		1) uno ;;
		2) dos ;;
		3) Salir;
		exit;;
		*) echo -e "											${RED}Error ${STD}" && sleep 0.5
	esac
}


clear
menu_pregunta
leer_respuesta
