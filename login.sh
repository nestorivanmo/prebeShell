#!/bin/bash
esCORRECTO=0

read -p "Usuario: " USERNAME
if [ $? -ne 0 ]
then
	echo "Usuario $USERNAME no es válido"
	exit 1
else
	if su -c true "$USERNAME"; then
  		esCORRECTO=1
		export esCORRECTO
	else
		esCORRECTO=0
	fi
fi

