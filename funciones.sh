#!/bin/bash
emperador(){

echo -e "${GREEN}


						                               {{E}}
						               <>               |.|
						             .::::.             |M|
						         @\\/W\/\/W\//@          |.|
						          \\/^\/\/^\//     _    )P(    _
						           \_O_<>_O_/     (@)__/ . \__(@)
						      ____________________  ~ -=)E(=- ~ 
					             |<><><>  |  |  <><><>|     |.|
						     |<>      |  |      <>|     |R|
					   	     |<>   PREBESHELL   <>|     | |
						     |<>   .--------.   <>|     |.|
			  			     |     |   ()   |     |     |A|
						     |____|0 LINUX 0 |____|     | |
						     |     \   /\   /     |     |.|
						     |------\  \/  /------|     |D|
						     |   TITULAR: QUIÑO   |     | |
						     |        |  |        |     |.|
						     :        2018        :     |O|
						      \<>     |  |     <>/      | |
						       \<>    |  |    <>/       |.|
						        \<>   |  |   <>/        |R|
						          \<> |  | <>/          | |
						            -.|  |.-            \ /
						               --                ^
";
}




RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
STD='\033[0;0;39m'
CYAN='\033[1;96m'
IBlUE='\033[0;104m'
WHITE="\033[1;97m"
BLUE='\033[1;34m'

errorSignal()
{
 echo -e " ${GREEN} Intenta usar el comando: ' ${WHITE} salir'"
}

mostrarFecha()
{
 echo -e $(date +"${WHITE}%a ${GREEN}%d/${YELLOW}%m/${GREEN}%y")
 echo -e "${BLUE}Día: "$(date +"${CYAN}%j")
}
mostrarHora()
{
 echo -e $(date +" ${YELLOW}%H:${WHITE}%M")
}

trap 'errorSignal' SIGINT SIGTSTP
menu() {
sleep 1
 clear
hola(){
clear
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo -e " 		${GREEN}  ______     __     ______     __   __     __   __   ______     __   __     __     _____     ______    "
 echo -e "		${GREEN} /\  == \   /\ \   /\  ___\   /\  -.\ \   /\ \ / /  /\  ___\   /\  -.\ \   /\ \   /\  __-.  /\  __ \   "
 echo -e "		${YELLOW} \ \  __<   \ \ \  \ \  __\   \ \ \-.  \  \ \ \'/   \ \  __\   \ \ \-.  \  \ \ \  \ \ \/\ \ \ \ \/\ \  "
 echo -e "		${RED}  \ \_____\  \ \_\  \ \_____\  \ \_\\ \_\  \ \__|    \ \_____\  \ \_\\ \_\  \ \_\  \ \____-  \ \_____\ "
 echo -e "		${CYAN}   \/_____/   \/_/   \/_____/   \/_/ \/_/   \/_/      \/_____/   \/_/ \/_/   \/_/   \/____/   \/_____/ "
                                                                                                      
echo ""
echo ""
echo ""

emperador
}
hola
echo -e "	                              ${WHITE} Eres de nuevo ingreso a esta Prebeshell EMPERADOR"

sleep 2
 echo -e "      	▲ ▼ ▶ ◀ ▼ ▲ ▲ ▼ ▶ ▼ ▲ ▲ ▼ ▶ ◀ ▶ ▲ ▲ ▶ ▶ ▼ ▲ ▶ ▶ ▶ ▼ ▲ ◀ ◀ ▶ ▼ ◀ ▶ ▼ ▶ ▶ ◀ ▼ ▲ ◀ ▶ ▲ ▼ ▶ ▶ ▼ ▼ ▲ ◀ ▶ ▼ ▲ " 
hola
 echo -e "				${BLUE} Esta es una gaid fast de todo lo que tienes que saber para tener éxito"
sleep 2
hola

echo -e "						${RED} Ponte trucha que se quitarán de volón pinpón"
sleep 1s
echo -e "	      ▲ ▼ ▶ ◀ ▼ ▲ ▲ ▼ ▶ ▼ ▲ ▲ ▼  ▶ ◀ ▶ ▲ ▲ ▶ ▶ ▼ ▲ ▶ ▶ ▶ ▼ ▲ ◀ ◀ ▶ ▼ ◀ ▶ ▼ ▶ ▶ ◀ ▼ ▲ ◀ ▶ ▲ ▼ ▶ ▶ ▼ ▼ ▲ ◀ ▶ ▼ ▲ " 
clear
sleep 1

 ./manpage.sh
sleep 1
}
menu


set SCRIPT='readlink "$0"'
PS1=$(hostname -f)" @ "$PWD

while :
do
 echo -n $PS1" : "
 read COMMAND_INPUT args
 case $COMMAND_INPUT$args in
	(alv|salir) clear; echo -e "${YELLOW} \n\n\n\n\n \t\t\t  Láaaaaaastima que terminó el feeeestival de hoooy :,( . Weno ni fart, bais";
sleep 1; 

echo -e "							${BLUE}Cerrando procesos . . ."; 
sleep 1;
	echo -e "					${RED}Volviendo a tu shell sencilla y aburrida . . .";
 sleep 1;
 echo -e "							${GREEN}¡LISTO! Bai final" 


sleep 1; clear; 
	echo -e "      ▲ ▼ ▶ ◀ ▼ ▲ ▲ ▼ ▶ ▼ ▲ ▲ ▼ ▶ ◀ ▶ ▲ ▲ ▶ ▶ ▼ ▲ ▶ ▶ ▶ ▼ ▲ ◀ ◀ ▶ ▼ ◀ ▶ ▼ ▶ ▶ ◀ ▼ ▲ ◀ ▶ ▲ ▼ ▶ ▶ ▼ ▼ ▲ ◀ ▶ ▼ ▲  ▼ ▶ ▶ ◀ ▼ ▲ ◀ " 
	echo -e "\n\n\n\n\n          CCCCCCCCCCCCCCCC        IIIIIIIIIIIIIIIIIIIIIII		AAAA		         	OOOOOOOOOOOO"
	echo -e "         CCCCCCCCCCCCCCCCC        IIIIIIIIIIIIIIIIIIIIII               AAAA   AAAA                       OOOOOOOOOOO"
	echo -e "        CCCCCCCCCCCCCCCCC           IIIIIIIIIIIIIIIIII               AAAA      AAAAA                   OOOOOOOOOOOOOOOO"
	echo -e "        CCCCCCCCCCC                     IIIIIIIIIIII              AAAAA        AAAAA               OOOOOOOOOOOOOOOOOOOO"
	echo -e "       CCCCCCCCCCCC                     IIIIIIIIIIII             AAAAAA        AAAAAAA            OOOOOOOOOO     OOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAA         AAAAAAA           OOOOOOO        OOOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAA           AAAAA         OOOOOOOO         OOOOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAA            AAAA       OOOOOOOOO          OOOOOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAA            AAAA      OOOOOOOOOO          OOOOOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAA            AAAA      OOOOOOOOOO          OOOOOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAAAAAAAAAAAAAAAAAA      OOOOOOOOOO          OOOOOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAAAAAAAAAAAAAAAAAA      OOOOOOOOOO          OOOOOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAA            AAAA      OOOOOOOOOO          OOOOOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAA            AAAA      OOOOOOOOOO          OOOOOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAA            AAAA      OOOOOOOOOO          OOOOOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAA            AAAA      OOOOOOOOOO          OOOOOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAA            AAAA       OOOOOOOOOO         OOOOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAA            AAAA        OOOOOOOOO         OOOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAA            AAAA         OOOOOOOO         OOOOOOO"
	echo -e "        CCCCCCCCCCC                     IIIIIIIIIIII             AAAAAA            AAAA          OOOOOOOOOOOOOOOOOOOOOO"
	echo -e "         CCCCCCCCCC                     IIIIIIIIIIII             AAAAAA            AAAA            OOOOOOOOOOOOOOOOOOO"
	echo -e "          CCCCCCCCCCCCCCC            IIIIIIIIIIIIIIIII           AAAAAA            AAAA            OOOOOOOOOOOOOOOOO"
	echo -e "      ▲ ▼ ▶ ◀ ▼ ▲ ▲ ▼ ▶ ▼ ▲ ▲ ▼ ▶ ◀ ▶ ▲ ▲ ▶ ▶ ▼ ▲ ▶ ▶ ▶ ▼ ▲ ◀ ◀ ▶ ▼ ◀ ▶ ▼ ▶ ▶ ◀ ▼ ▲ ◀ ▶ ▲ ▼ ▶ ▶ ▼ ▼ ▲ ◀ ▶ ▼ ▲ "            CCCCCCCCCCCCCCC          IIIIIIIIIIIIIIIIIIII         AAAAAA            AAAA              OOOOOOOOOOOOOOOOO"
		sleep 2; clear
		exit;;
	(pp) ./prebePlayer.sh;;
	(manpage) ./manpage.sh;;
	(jeje) clear;;
	(taim|clock|hora) mostrarHora;;
	(deit|fecha) mostrarFecha;;
	(mozek) ./memoria.sh;;
	(tri) ./arbol.sh;;
	*) echo $COMMAND_INPUT":${RED} Comando inváido";;
 esac
done

