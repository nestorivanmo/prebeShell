#!/bin/bash
#colores código:rojo:\033[0;31m, azulito:\033[0;34m, amarello:\033[1;33m

prebep() {
fuga=0;
        while [ $fuga -ne 1 ]
        do
        clear;ontoi=$PWD;
echo -e "\033[1;33m"
echo '|   _  \  |   _  \     |   ____||   _  \  |   ____||   _  \  |  |         /   \     \   \  /   / |   ____||   _  \     
|  |_)  | |  |_)  |    |  |__   |  |_)  | |  |__   |  |_)  | |  |        /  ^  \     \   \/   /  |  |__   |  |_)  |    
|   ___/  |      /     |   __|  |   _  <  |   __|  |   ___/  |  |       /  /_\  \     \_    _/   |   __|  |      /     
|  |      |  |\  \----.|  |____ |  |_)  | |  |____ |  |      |  `----. /  _____  \      |  |     |  |____ |  |\  \----.
| _|      | _| `._____||_______||______/  |_______|| _|      |_______|/__/     \__\     |__|     |_______|| _| `._____|
                                                                                                                       '
echo '                              
,---.                         
|--- ,---.,---.,---.,---.,---
|    `---.|    |   ||   ||---
`---`---  `----`--- `---|`---
                    `---
'
echo -e "\e[1;34m*****************1)Reproducir   	     			               \033[0;34m ||||||*°°°"
echo -e "\033[1;34m*****************2)Lista de canciones      				        ||||||*°°°"
echo -e "\033[1;34m*****************3)Subir carpeta 	      				        ||||||*°°°"
echo -e "\033[1;34m*****************4)Cambiar carpeta (a una que sí tengas rolas, goey plis)	||||||*°°°"
echo -e "\033[1;34m*****************5)FUGA (exit, adios, bai bai como quieras decirle, pandilla)	||||||*°°°"
echo -e "-------------------------------------------------------------------------Ruta actual: $ontoi"
echo -ne "\033[0;34m \t\t\t\n\t\tOpción:"  #el  ne hace que no deje el espacio el echo        
	read op
	   case $op in
        1)      

                echo -e "\t \033[1:33m *-- S->Parar      f->siguiente   --*"
                echo -e "\t     *--d->anterior            q->parar prebeplayer --*"
         	echo -e "\t     *--(+)->sube volumen    (-)-> baja volumen     --*"
		echo -e "\t     *------**------**-----**-------**-----**----**---*"

                mpg123 --title -qC *.mp3
                ;;
        2)     clear
                sleep 0.5
                echo -e "\tRolones disponibles"

                find . -type f -name "*.mp3" | xargs grep "*.mp3" # < sort #esto busca archivos con .mp3 y el grep los lista sin el .mp3
                #if [-n $(find . -type f -name "*.mp3" | xargs grep "*.mp3") ]
                #then
                #       echo ls *.mp3
                        sleep 05
                #else 
                #       echo "no hay canciones aquí"
                #fi
                echo
                 ;;
        3)      cd .. 

		;;
        4)	echo -e "\t ¿A dónde nos movemos, Emperador?"
		echo -e "\t\t Directorios posibles:"
		#if [ ( -n $(ls -F | grep "/$") ]
		#then
			ls -F | grep "/$"
			echo -ne "\033[0;34m \t\t Escribe el directorio, maifren: " #el n hace que no baje el cursor
			read ans ; cd $ans ; sleep 0.5; echo -e "Listo, está cambiao"
		#else 
			echo "No hay directorios dentro de $ruta, intenta la opción de subur de carpeta"
		#fi
		;;
	5)      echo "adiós"
                fuga=1
		;;
	6) echo "hola";;
	
        *)      clear
                echo "esa no es precisamente lo que llamaría una opción"
                ;;

        esac
done

}
if [ -z $(ls -d /usr/bin/mpg123) ] #checa que esté mpg y si no, lo instala 
then    echo "No está el programa para reproducir"
        echo "Lo voa instalar"
        sudo apt-get install mpg123
	prebep		#ejecuta la prebeP
else    
	prebep    #se va directo a la ejecución de la prebePlayer
fi	
