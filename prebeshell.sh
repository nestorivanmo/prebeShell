#!/bin/bash
errorSignal()
{
 echo " intenta usar el comando 'salir'"
}

intro()
{

echo " "
echo " "
echo " "

 echo "                  ***************************************"
 echo "                  *                                     *"
 echo "                  *             PrebeShell              *"
 echo "                  *                                     *"
 echo "                  *      Bárcenas-Martínez-Pineda       *"
 echo "                  *                                     *"
 echo "                  *        # 3      #11     #20         *"
 echo "                  *                                     *"
 echo "                  *              PROTECO                *"
 echo "                  ***************************************"

echo " "
echo " "
echo " "
echo "Presiona cualquier tecla para comenzar..."
read

}

trap 'errorSignal' SIGINT SIGTSTP


set SCRIPT='readlink "$0"'
PS1=$(hostname -f)" @ "$PWD

intro


while :
do
 echo -n $PS1": "
 read COMMAND_INPUT args
 case $COMMAND_INPUT$args in
	(arbol|arbol$args) ./arbol.sh $args;;
	(salir) exit;;
	(manpage) ./manpage.sh;;
	(clear) clear;;
	*) echo $COMMAND_INPUT": comando inváido";;
 esac
done


