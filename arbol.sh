#!/bin/bash


cut()
{
 echo $1 | rev | cut -d'/' -f-1 | rev
}

arbol(){
array=($1/*)
count=$(ls -N | wc -l)

#echo $PWD

for ((number=1;number < $count;number++))
{

if [ -d "${array[number]}" ];then
	cd ${array[number]}
	arbol $PWD
	cd ..
else
	if [ -f "${array[number]}" ];then
 		echo "	--${array[number]}"
	else
		echo "${array[number]} not valid"
		exit 1
	fi
fi
}

#hacer ciclo for -> count
	#if -> detectar si es directory o file (ls -d / ls -f)
		#si lo es, entra
		#si no lo es, imprimelo

#pasar las primeras 3 lineas como argumento
}

dirActual=$PWD


echo "$dirActual"
echo $dirActual | rev | cut -d'/' -f-3 | rev
echo $dirActual | rev | cut -d'/' -f-1 | rev


#arbol $dirActual


#http://blackshell.usebox.net/pub/shell/taller_sh/x36.html
#http://tldp.org/HOWTO/Bash-Prompt-HOWTO/x700.html
#https://stackoverflow.com/questions/10382141/temporarily-change-current-working-directory-in-bash-to-run-a-command
#https://stackoverflow.com/questions/21668471/bash-script-create-array-of-all-files-in-a-directory

