#!/bin/bash
array=( "a" )
len=${#array[@]}

imprimeReglas()
{
 clear
 tput cup 5 50
 echo "BIENVENIDO AL JUEGO DE MEMORIA"
 tput cup 7 50
 echo "------------------------------"
 tput cup 9 62
 echo "MOZEK"
 tput cup 11 50
 echo "------------------------------"
 tput cup 13 47
 echo "En este juego probaremos tu memoria..."
 tput cup 17 15
 echo "INSTRUCCIONES"
 tput cup 20 20
 echo "El juego te mostrará un patrón de letras, tu misión es imitar ese patrón usando tu teclado..."
 tput cup 22 20
 echo "Recuerda: debes separ con un espacio cada una de tus respuestas, de lo contrario PERDERÁS!"
 tput cup 24 20
 echo "Te pongo un ejemplo:"
 tput cup 26 25
 echo "-Patrón arrojado: 'q' 'w' 'e' 'r' 't' 'y'"
 tput cup 28 25
 echo "-Tu respuesta debe ser: q w e r t y"
 tput cup 30 25
 echo "-No puede ser: 'qwerty' o 'qw er ty'"
 tput cup 35 53
 echo "¿Aceptas el reto? [S/N]"
 tput cup 38 64
 echo "___"
 tput cup 38 65
 read RESPUESTA
 if [ "$RESPUESTA" = "s" ] || [ "$RESPUESTA" = "S" ];
 then
		clear
		imprimeMargenes
		imprimeCaracteres 0.8
		respuestaUsuario
 else
	printf "Muy mal..."
	exit 0
 fi

}

FIRSTROW=3
FIRSTCOL=40
LASTROW=30
LASTCOL=90
imprimeMargenes()
{
   # Draw top
   tput setf 6
   tput cup $FIRSTROW $FIRSTCOL
   x=$FIRSTCOL
   while [ "$x" -le "$LASTCOL" ];
   do
      printf %b "x"
      x=$(( $x + 1 ));
   done

   # Draw sides
   x=$FIRSTROW
   while [ "$x" -le "$LASTROW" ];
   do
      tput cup $x $FIRSTCOL; printf %b "x"
      tput cup $x $LASTCOL; printf %b "x"
      x=$(( $x + 1 ));
   done

   # Draw bottom
   tput cup $LASTROW $FIRSTCOL
   x=$FIRSTCOL
   while [ "$x" -le "$LASTCOL" ];
   do
      printf %b "X"
      x=$(( $x + 1 ));
   done
   tput setf 9
}

speed=0.8
score=0

imprimeCaracteres()
{
for (( word=0; word <= $len; word++ ))
do
	tput home
	printf "score: $score"
	tput cup 10 63
	tput civis
	printf "[   ]"
	tput cup 10 65
	printf "%s\n" "${array[word]}"
	sleep $1
done
}

generaCaracteres()
{
 R=$(($RANDOM%4))
 case $R in
	0)tput setaf 3; array+=("a");;
	1) array+=("s");;
	2) array+=("e");;
	3) array+=("f");;
 esac
 len=${#array[@]}
}

borrarCaracteres()
{
        tput cup 17 42
        printf "%30s" " "
}


s=0.05
newSpeed()
{
 if [ "$speed" != 0.2 ]
 then
	speed=$( echo "$speed - $s" | bc)
 fi
}
bienTotal=0

respuestaUsuario()
{
bien=0
tput cvvis
tput cup 15 60
echo -n "Tu turno: "
tput cup 17 42
declare -a userArray
read -a userArray
for (( w=1; w<= $len; w++ ))
do
	if [ "${userArray[w]}" ==  "${array[w]}" ]
	then
		score=$(( $score + 10));
		bien=$(( $bien + 1));
		bienTotal=$(( $bienTotal + 1 ));
	else
		tput cup 23 60
		echo "PERDISTE"
		tput cup 25 59
		echo "Score: $score"
		tput cup 32 0
		break;
	fi
done

	if [ "$bien" -eq "$len" ]
	then
		borrarCaracteres
		newSpeed
		generaCaracteres
		imprimeCaracteres $speed
		respuestaUsuario
	else
		tput cup 26 58
		echo "Patrón: ${array[@]}"
		tput cup 28 52
		echo "Racha: $bienTotal respuestas buenas"
		tput cup 35 0
		exit 0
	fi
}

imprimeReglas


