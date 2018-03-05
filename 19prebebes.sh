#!/bin/bash
BORDE="░"
MARGENSUP=1
MARGENIZQ=10 
UCOL=50
UFIL=40

clear
prebes(){

bannner(){
clear
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "

echo -e "					   __  ___    _____          _          _       __      "
echo -e "					  /_ |/ _ \  |  __ \        | |        | |     /_/       "
echo -e "					   | | (_) | | |__) | __ ___| |__   ___| |__   ___  ___  "
echo -e "					   | |\__, | |  ___/ '__/ _ \ '_ \ / _ \ '_ \ / _ \/ __| "
echo -e "					   | |  / /  | |   | | |  __/ |_) |  __/ |_) |  __/\__ \ "
echo -e "				  	   |_| /_/   |_|   |_|  \___|_.__/ \___|_.__/ \___||___/ "

echo -e  "  "
echo -e  "  "
echo -e  "  "
}

bannner
echo -ne ' 				          	                                            (0%)\r'
sleep 1 
clear
bannner
echo -ne '	      				  😂 😅 😂 😇 🙂 🙃 😉 😌 😍 😘 😗                             (20%)\r'
sleep 1
clear
bannner
echo -ne '	                  		  😶 😐 😑 😯 😦 😧 😮 😲 😵 👩 ‍👩 ‍👦 ‍👦                         (50%)\r'
sleep 1
clear
bannner

echo -ne '				          👩 ‍🌾 👨 ‍🌾 👩 ‍🍳 👨 ‍🍳 👩 ‍🎓 👨 ‍🎓 👩 ‍🎤 👨 ‍🎤                   (80%)\r'
sleep 1
clear
bannner

echo -ne '	                 		  👿 👹 👺 💩 👻 💀 ☠️ 👽 👾 🤖 🎃 😺 😸 😹 😻 🙎 🙎 ‍♂️ 🙍 🙍 ‍♂️         (100%)\r'
sleep 1
clear
bannner

echo -ne '					  👨 ‍👩 ‍👧 👨 ‍👩 ‍👧 ‍👦 👨 ‍👩 ‍👦 ‍👦 👨 ‍👩 ‍👧‍ 👧 👩 ‍👩 ‍👦               (80%)\r'
sleep 1
clear
bannner
echo -ne '		          		  😭 😓 😪 😴 🙄 😩 😤 😠 😡 😳 😱 😨 😰 😢                       (50%)\r'
sleep 1 
clear
bannner
echo -ne ' 		         		  😀 😃 😄 😁 😆 🤓 😎                                     (35%)\r'

sleep 1s
# VAMOS A PONERLE COLOR A UN CODIGO DE  LA HISTORIA

echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "

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
clear 

echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "

#AQUI TERMINA EL CODIGO DE COLOR
				cecho blue  " Dic. 2017. 
				       	      Ochenta prebebes fueron a la prueba de conocimientos,
				              solo 55 fueron aceptados.
  					      40 de ellos llegaron el priemer dia,y 30 al segundo,
  					      conforme pasaron los dias fueron desertando.
  					      Hoy solo quedan 19 prebebes para resonar en la eternidad"

				 cecho cyan " Los prebebes restantes jugaban con un globo
  					      este se le escapo a un prebebe. Tu mision es dirigirlos
				              para construir una torre,que ayude a llegar hasta el globo"
echo '\n'


PREBE=`echo $(($RANDOM%22))`





echo -e "					         \\\///              "
echo -e "					        / _  _ \             "
echo -e "					      (| (.)(.) |)           "
echo -e "					.---.OOOo--()--oOOO.---.     "
echo -e "					|                      |     "
echo -e "					|  Eres el prebebé     |     "
echo -e "					|      $PREBE                |     "
echo -e "					'---.oooO--------------'     "
echo -e "					     (   )   Oooo.           "
echo -e "					      \ (    (   )           "
echo -e "					       \_)    ) /            "
echo -e "					             (_/             "


echo "Jugaras con el Prebebe $PREBE:"


}


clear 

bordes(){
tput setf 6
   tput cup $MARGENSUP $MARGENIZQ
   x=$MARGENIZQ
   while [ "$x" -le "$UCOL" ];
   do
      printf %b "$BORDE"
      x=$(( $x + 1 ));
   done

   # Draw sides
   x=$MARGENSUP
   while [ "$x" -le "$UFIL" ];
   do
      tput cup $x $MARGENIZQ; printf %b "$BORDE"
      tput cup $x $UCOL; printf %b "$BORDE"
      x=$(( $x + 1 ));
   done

   # Draw bottom
   tput cup $UFIL $MARGENIZQ
   x=$MARGENIZQ
   while [ "$x" -le "$UCOL" ];
   do
      printf %b "$BORDE"
      x=$(( $x + 1 ));
   done
   tput setf 9

echo -e " \n " 

}

ZEROES=`echo |awk '{printf("%0"'"$SNAKESIZE"'"d\n",$1)}' | sed 's/0/0 /g'`
LASTPOSX=( $ZEROES )                    # Pad with zeroes to start with
LASTPOSY=( $ZEROES )                    # Pad with zeroes to start with

#SCORE=0                                 # Starting score

clear
prebes
echo "
Keys:

 W - ARRIBA
 S - ABAJO
 A - IZQUIERDA
 D - DERECHA
 X - SALIR




Press Return to continue
"
stty -echo
tput civis
read RTN
tput setb 0
tput bold
clear

bordes
#updatescore 0


