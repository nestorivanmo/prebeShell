#!/usr/bin/env bash

clear


RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
STD='\033[0;0;39m'
CYAN='\033[1;96m'
WHITE="\033[1;97m"




echo ""
echo ""
echo ""
echo ""
echo ""
echo ""

echo -e " ${RED} 		       		                | |_ ___  ___| | __ _ ___  	${STD} "
echo -e " ${GREEN}						| __/ _ \/ __| |/ _  / __| 	${STD} "
echo -e " ${CYAN}						| ||  __/ (__| | (_| \__ \ 	${STD} "
echo -e " ${YELLOW}				 		\__\___|\___|_|\___|___/  	${STD}"

echo ""
echo ""
echo ""
echo -e "						${GREEN} MOVER - ARRIBA  	[a]"
echo -e "						${GREEN} MOVER - ABAJO   	[b]"
echo -e "						${GREEN} CAMBIO DE COLOR 	[espacio]"
echo -e "						${GREEN} SALIR 			[0]"

echo "Presiona cualquier tecla para continuar..."
read

trap 'tput cnorm; tput sgr0; clear' EXIT

tput civis
stty -echo

texto="------------"
max=$(($(tput cols) - ${#texto}))
direc=1 x=1 y=$(($(tput lines)/2))
color=3

bebe(){
echo -e "☻ 
/▌\   
/\﻿    ";
}

while sleep 0.05 
do
    (( x == 0 || x == max )) && \
        ((direc *= -1))
    (( x += direc ))


    while IFS= read -rs -t 0.0001 -n 1 KEY
    do
        [[ $KEY == a ]] && (( y++ ))
        [[ $KEY == s ]] && (( y-- ))
        [[ $KEY == " " ]] && color=$((color%7+1))





case $KEY in 

	0) echo "				ABANDONANDO PARTIDA";
	  echo "				NUNCA SE GANA O SE PIERDE, SIEMPRE SE APRENDE - ERICK I. BARCENAS "
	sleep 3s;
	exit;;
	esac

	done

   imagen=$(
        clear
        tput cup "$y" "$x"
        tput setaf "$color"
	bebe 
	
    )

    printf "%s" "$imagen"
done
