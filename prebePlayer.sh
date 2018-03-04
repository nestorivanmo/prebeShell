#!/bin/bash
if [ -z $(ls -d /usr/bin/mpg123) ] #checa que esté mpg y si no, lo instala 
then    echo "No está el programa para reproducir"
        echo "Lo voa instalar"
        sudo apt-get install mpg123
else    op=0;
        while [ $op -ne 1 ]
        do
        echo "Escoge una opción"
        echo " 1)Reproducir"
        echo " 2)Ver canciones"
        echo " 3)Subir carpeta"
        echo " 4)Salir"
        read op
                case $op in
        1)      
                echo "s->parar  ,  f->siguiente  , +->sube volumen , - -> bajavol"
                echo "d: anterior , q: parar prebeplayer"
                mpg123 --title -qC *.mp3
                ;;
        2)      ls ;;
        3)      cd .. ;;
        4)      echo "adiós, bai"
                op=1;;
        esac
done
fi
