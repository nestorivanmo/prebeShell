#!/bin/bash
errorSignal()
{
 echo " intenta usar el comando 'salir'"
}

mostrarFecha()
{
 echo $(date +"%a %d/%m/%y")
 echo "Día: "$(date +"%j")
}
mostrarHora()
{
 echo $(date +"%H:%M")
}

trap 'errorSignal' SIGINT SIGTSTP
menu() {
 clear
 echo -e "\t\t \033[0;0;39m Bienvenido, eres de nuevo ingreso a esta prebeshell"
sleep 1
 echo -e "\t\t\t ...................." 
 echo -e "Esta es una gaid fast de todo lo que tienes que saber para comenzar"
sleep 1
 clear

 echo -e "Ponte trucha que se quitarán de volón pinpón"
sleep 1
 ./manpage.sh
sleep 1
}
menu


set SCRIPT='readlink "$0"'
PS1=$(hostname -f)" @ "$PWD
CERO=0

while :
do
 echo -n $PS1": "
 read COMMAND_INPUT args
 case $COMMAND_INPUT$args in
	(arbol|arbol$args) ./arbol.sh $args;;
	(fuga|alv) clear; echo -e "\033[33m \n\n\n\n\n \t\t\t  Láaaaaaastima que terminó el feeeestival de hoooy :,( . Weno ni fart, bais";sleep 1; echo -e "Cerrando procesos . . ."; sleep 1;
	echo -e "Volviendo a tu shell sencilla y aburrida . . ."; sleep 1; echo -e "¡LISTO! Bai final" sleep 1; clear; 
	echo -e "\n\n\n\n\n          CCCCCCCCCCCCCCCC        IIIIIIIIIIIIIIIIIIIIIII		AAAA		         	OOOOOOOOOOOO"
	echo -e "         CCCCCCCCCCCCCCCCC        IIIIIIIIIIIIIIIIIIIIII               AAAA   AAAA                       OOOOOOOOOOO"
	echo -e "        CCCCCCCCCCCCCCCCC           IIIIIIIIIIIIIIIIII               AAAA      AAAAA                   OOOOOOOOOO OOOOOOO"
	echo -e "        CCCCCCCCCCC                     IIIIIIIIIIII              AAAAA        AAAAA               OOOOOOOOOOOOOOOOOOOO"
	echo -e "       CCCCCCCCCCCC                     IIIIIIIIIIII             AAAAAA        AAAAAAA            OOOOOOOOOO     OOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAA         AAAAAAA           OOOOOOOOOO       OOOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAA           AAAAA         OOOOOOOOO         OOOOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAA            AAAA        OOOOOOOOO          OOOOOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAA            AAAA      OOOOOOOOOOO          OOOOOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAA            AAAA     OOOOOOOOOOO             OOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAAAAAAAAAAAAAAAAAA     OOOOOOOOOOO            OOOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAAAAAAAAAAAAAAAAAA      OOOOOOOOOO            OOOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAA            AAAA      OOOOOOOOOO             OOOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAA            AAAA      OOOOOOOO                OOOOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAA            AAAA      OOOOOOOOOO            OOOOOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAA            AAAA      OOOOOOOOOOO           OOOOOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAA            AAAA      OOOOOOOOOOO           OOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAA            AAAA        OOOOOOOOOO         OOOOOOOO"
	echo -e "       CCCCCCCCCCC                      IIIIIIIIIIII             AAAAAA            AAAA         OOOOOOOO          OOOOOOO"
	echo -e "        CCCCCCCCCCC                     IIIIIIIIIIII             AAAAAA            AAAA         OOOOOOOOOOOOOOOOOOOOOOOOOO"
	echo -e "         CCCCCCCCCC                     IIIIIIIIIIII             AAAAAA            AAAA            OOOOOOOOOOOOOOOOOOOOO"
	echo -e "          CCCCCCCCCCCCCCC            IIIIIIIIIIIIIIIII           AAAAAA            AAAA            OOOOOOOOOOOOOOOOOOOO"
	echo -e "           CCCCCCCCCCCCCCC          IIIIIIIIIIIIIIIIIIII         AAAAAA            AAAA              OOOOOOOOOOOOOOOOO"
		sleep 2; clear
		exit;;
	(pp) ./prebePlayer.sh;;
	(manpage) ./manpage.sh;;
	(jeje) clear;;
	(taim|clock) mostrarHora;;
	(deit) mostrarFecha;;
	(mozek) ./memoria.sh;;
	*) echo $COMMAND_INPUT": comando inváido";;
 esac
done

