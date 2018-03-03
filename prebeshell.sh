#!/bin/bash


esCorrecto=0
./intro.sh

while [ $esCorrecto -lt 3 ]; do
	read -p "Usuario: " USERNAME
	if [ $? -ne 0 ]
	then
		echo "Usuario $USERNAME no es válido"
		exit 1
	else
		if su -c true "$USERNAME"; then
  			esCorrecto=3
			./funciones.sh
		else
			esCorrecto+=1
			echo "Intenta de nuevo"
		fi
	fi
done
