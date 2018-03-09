#!/bin/bash
clear
tput civis
x=50
y=35

tput init
#tput cnorm
#tput setb 4

shoot()
{
 SY=100000000000000
 SX=$(( $x +25 ))
 while [ "$y" -gt  2 ]
 do
 SX=$(( $x +30 ))

 sleep 0.050;


echo "☻ ";

tput cup  $SY $SX;

done



}

shoot
