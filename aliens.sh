#!/bin/bash

FIRSTX=30
FIRSTY=5
LASTX=40


rowAliens()
{
 array=(x x x x x x x x x x x x x x x)
 while [ "$FIRSTX" -le 70 ]
 do
        tput cup $FIRSTY $FIRSTX
        sleep 0.8
        printf "     ${array[*]}"
 FIRSTX=$(( $FIRSTX + 5 ));
 done
}

rowAliens



