#!/bin/bash
#colores código:rojo:\033[0;31m, azulito:\033[0;34m, amarello:\033[1;33m
trap "'Srry, men, no puedes matarme. Para salir usa fuga'" SIGINT

prebep() {

fuga=0;
        while [ $fuga -ne 1 ]
        do
        clear;ontoi=$PWD;
        echo -e "\t\t--------------------------------------------------"
        echo -e "\033[0;34m PREBEPLAYER 1.35 \033[0;31m"
        echo -e "\t\t\t\nEscoge una opción"
        echo -e "\t\t\t\n 1)Reproducir"
        echo -e "\t\t\t\n 2)Lista de canciones"
        echo -e "\t\t\t\n 3)Subir carpeta"
        echo -e "\t\t\t\n 4)Cambiar carpeta (a una que sí tengas rolas, goey plis)"
        echo -e "\t\t\t\n 5)FUGA (exit, adios, bai bai como quieras decirle, pandilla)"
        echo -e "\t\t\t\n-----------------------------Ruta actual: $ontoi"
        echo -ne "\t\t\t\n\t\tOpción:"  #el pishi ne hace que no deje el espacio
        read op
	   case $op in
        1)      

                echo -e "\ts->parar\t f->siguiente\t+->sube volumen\t-> bajavol"
                echo -e "\td>> anterior\tq>>parar prebeplayer"
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
<<<<<<< HEAD
		;;
        4)	echo -e "\t A dónde nos movemos, Emperador?"
		echo -e "\t\t Directorios posibles:"
		#if [ ( -n $(ls -F | grep "/$") ]
		#then
			ls -F | grep "/$"
			echo -ne "\t\t Answer --->" #el n hace que no baje el cursor
			read ans ; cd $ans ; sleep 0.5; echo -e "Listo, está cambiao"
		#else 
			echo "No hay directorios dentro de $ruta, intenta la opción de subur de carpeta"
		#fi
		;;
	5)      echo "adiós"
                fuga=1
		;;
	
=======
                ;;
        4)      echo -e "\t A dónde nos movemos, Emperador?"
                echo -e "\t\t Directorios posibles:"
                #if [ ( -n $(ls -F | grep "/$") ]
                #then
                        ls -F | grep "/$"
                        echo -ne "\t\t Answer --->" #el n hace que no baje el cursor
                        read ans ; cd $ans ; sleep 0.5; echo -e "Listo, está cambiao"

	#else 
                        echo "No hay directorios dentro de $ruta, intenta la opción de subur de carpeta"
                #fi
                ;;
        5)      echo "adiós, bai"
                fuga=1
                ;;
        *)      clear
                echo "esa no es precisamente lo que llamaría una opción"
                ;;
>>>>>>> 16b661f204c90321bbc285baa2c2a237e209782d
        esac
done

}
if [ -z $(ls -d /usr/bin/mpg123) ] #checa que esté mpg y si no, lo instala 
then    echo "No está el programa para reproducir"
        echo "Lo voa instalar"
        sudo apt-get install mpg123
	prebep
else    
	prebep
fi	
