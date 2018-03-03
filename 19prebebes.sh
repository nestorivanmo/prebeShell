#!/bin/bash

clear
sleep 1s
figlet "19 Prebebes"

echo -ne '                                             (0%)\r'
sleep 1 
clear
figlet "19 Prebebes"
echo -ne '##################                           (20%)\r'
sleep 1
clear
figlet "19 Prebebes"
echo -ne '####################                         (50%)\r'
sleep 1
clear
figlet "19 Prebebes"
echo -ne '##########################                   (80%)\r'
sleep 1
clear
figlet "19 Prebebes"
echo -ne '##############################               (100%)\r'
sleep 1
clear
figlet "19 Prebebes"
echo -ne '##########################                   (80%)\r'
sleep 1
clear
figlet "19 Prebebes"
echo -ne '####################                         (50%)\r'
sleep 1 
clear
figlet "19 Prebebes"
echo -ne '##############                               (35%)\r'

echo -ne '\n'
sleep 1s
# VAMOS A PONERLE COLOR A UN CODIGO DE  LA HISTORIA

cecho() {
  local code="\033["
  case "$1" in
    black  | bk) color="${code}0;30m";;
    red    |  r) color="${code}1;31m";;
    green  |  g) color="${code}1;32m";;
    yellow |  y) color="${code}1;33m";;
    blue   |  b) color="${code}1;34m";;
    purple |  p) color="${code}1;35m";;
    cyan   |  c) color="${code}1;36m";;
    gray   | gr) color="${code}0;37m";;
    *) local text="$1"
  esac
  [ -z "$text" ] && local text="$color$2${code}0m"
  echo "$text"
}

#AQUI TERMINA EL CODIGO DE COLOR
cecho blue  " Dic. 2017. 
  Ochenta prebebes fueron a la prueba de conocimientos,
  solo 55 fueron aceptados.
  40 de ellos llegaron el priemer dia,y 30 al segundo,
  conforme pasaron los dias fueron desertando.
  Hoy solo quedan 19 prebebes para resonar en la eternidad"
echo '\n'

echo "Jugaras con el Prebebe:"
shuf  -n 1 -i 0-30
#echo  '\n' 
echo "¿Deseas saber sus poderes?"
echo '\n' 


printf "La pregunta"
if [[ $(yesno no) == yes ]]; then
        #lo que sea que queramos hacer
fi
