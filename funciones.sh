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


set SCRIPT='readlink "$0"'
PS1=$(hostname -f)" @ "$PWD
CERO=0

while :
do
 echo -n $PS1": "
 read COMMAND_INPUT args
 case $COMMAND_INPUT$args in
	(arbol|arbol$args) ./arbol.sh $args;;
	(salir|s) echo "salir"
		exit;;
	(pp) ./prebePlayer.sh;;
	(manpage) ./manpage.sh;;
	(clear) clear;;
	(hora|h) mostrarHora;;
	(fecha|f) mostrarFecha;;
	(mozek) ./memoria.sh;;
	*) echo $COMMAND_INPUT": comando inváido";;
 esac
done

