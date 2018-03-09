#!/bin/bash


RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
STD='\033[0;0;39m'
CYAN='\033[1;96m'
IBlUE='\033[0;104m'
WHITE="\033[1;97m"
BLUE='\033[1;34m'

esCorrecto=0
./intro.sh

while [ $esCorrecto -lt 3 ]; do
	read -p "Usuario: " USERNAME
	if [ $? -ne 0 ]
	then
		echo -e "${RED} Usuario $USERNAME no es válido"
		exit 1
	else
		if su -c true "$USERNAME"; then
  			esCorrecto=3
			./funcionesUp.sh
		else
			esCorrecto+=1
			echo -e "${RED} Intenta de nuevo"
		fi
	fi
done
