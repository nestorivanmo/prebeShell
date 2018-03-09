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
echo -e "\e[1;34m******************1)Reproducir   	     			                      *****************"
echo -e "\033[1;34m******************2)Lista de canciones      				              *****************"
echo -e "\033[1;34m******************3)Subir carpeta 	      				              *****************"
echo -e "\033[1;34m******************4)Cambiar carpeta (a una que sí tengas rolas, plis) 	              *****************"
echo -e "\033[1;34m******************5)FUGA (exit, adios, bai bai como quieras decirle, pandilla)        *****************"
echo -e "-------------------------------------------------------------------------Ruta actual: $ontoi "
echo -ne "\033[0;34m \t\t\t\n\t\tOpción:"  #el  ne hace que no deje el espacio el echo        
	read op
	   case $op in

1)      
 echo -e "\n\n\t\t \033[1;33mREPRODUCIENDO RAI NAO . . ."; sleep 1
 echo -e "\n \t \033[1;35m    *-- S->Parar              f->siguiente         --*"
 echo -e "\t     *--d->anterior            q->parar prebeplayer --*"
 echo -e "\t     *--(+)->sube volumen    (-)-> baja volumen     --*"
 echo -e "\t     *------**------**-----**-------**-----**----**---*"

 mpg123 --title -qC *.mp3
                ;;
2)     clear; sleep 0.5
 echo -e "\n\n\n \t\t\tRolones disponibles"
              ls *.mp3
          sleep 1

                ;;
3)      cd .. 
	;;
4)
    if (ls -F | grep "/$") #busca directorios y si no hay no entra al if
	then
			echo -e "\t \033[1;34m ¿A dónde nos movemos, Emperador?"
		  	 echo -e "\t\t Directorios posibles, mi champion:"
			ls -F | grep "/$"
			echo -ne "\033[0;34m \t\t Escribe el directorio, maifren: " #el n hace que no baje el cursor
			read ans ; cd $ans ; sleep 0.5; echo -e "Listo, está cambiao"
	else
		
		echo -e "\n\n \t\t\t \033[1;31mNo hay directorios dentro de $ontoi, intenta la opción de subur de carpeta"
		sleep 2
	fi		#fi
		;;
5)      echo '
      ______   _______ _________ _______ 
     (  ___ \ (  ___  )\__   __/(  ____ \
     | (   ) )| (   ) |   ) (   | (    \/
     | (__/ / | (___) |   | |   | (_____ 
     |  __ (  |  ___  |   | |   (_____  )
     | (  \ \ | (   ) |   | |         ) |
     | )___) )| )   ( |___) (___/\____) |
     |/ \___/ |/     \|\_______/\_______) 
'
               fuga=1
	;;
*)
echo -e "\033[1;33m"
        echo '
 _        _______    _______  _______             _        _______    _______  _______  _______ _________ _______  _       
( (    /|(  ___  )  (  ____ \(  ____ \  |\     /|( (    /|(  ___  )  (  ___  )(  ____ )(  ____ \\__   __/(  ___  )( (    /|
|  \  ( || (   ) |  | (    \/| (    \/  | )   ( ||  \  ( || (   ) |  | (   ) || (    )|| (    \/   ) (   | (   ) ||  \  ( |
|   \ | || |   | |  | (__    | (_____   | |   | ||   \ | || (___) |  | |   | || (____)|| |         | |   | |   | ||   \ | |
| (\ \) || |   | |  |  __)   (_____  )  | |   | || (\ \) ||  ___  |  | |   | ||  _____)| |         | |   | |   | || (\ \) |
| | \   || |   | |  | (            ) |  | |   | || | \   || (   ) |  | |   | || (      | |         | |   | |   | || | \   |
| )  \  || (___) |  | (____/\/\____) |  | (___) || )  \  || )   ( |  | (___) || )      | (____/\___) (___| (___) || )  \  |
|/    )_)(_______)  (_______/\_______)  (_______)|/    )_)|/     \|  (_______)|/       (_______/\_______/(_______)|/    )_)
                                                                                                                           
'
        sleep 1
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
	clear; echo -e "\033[1;33m"
	echo -e "\n\n[##################..........................38%]"
	sleep 0.5
	echo -e "\n\n[###########################..................59%]"
	sleep 0.5
	echo -e "\n\n[###############################################..99%]"
	sleep 0.5
	echo -e "\n\n[########################################################################################10000% alv súper ready]"
	sleep 0.5

	prebep    #se va directo a la ejecución de la prebePlayer
fi	
