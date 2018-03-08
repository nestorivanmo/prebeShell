#!/bin/bash
clear
tput civis
x=60
y=35

./aliens.sh&

shoot()
{
 SY=33
 SX=$(( $x + 4 ))
 while [ "$y" -ge 10 ]
 do
 tput cup $SY $SX;
 sleep 0.06
 printf %b "*"
 SY=$(( $SY - 2));
 done

}

moveRight()
{
 if [ "$x" -ne 120 ];
 then
  x=$(( $x + 2 ));
  paint
 fi
}

moveLeft()
{
 if [ "$x" -ne 10 ];
 then
    x=$(( $x - 2 ));
    paint
 fi
}


paint()
{
 tput cup $y $x;
 echo -e "  :|*|:  "

}
while :
do
   read -s -n 1 key
   case "$key" in
   f)   moveRight;;
   a)   moveLeft;;
   s)   shoot;;
   x)   tput cup $COLS 0
        echo "Quitting..."
        tput cvvis
        stty echo
        tput reset
        printf "Bye Bye!\n"
        trap exit ALRM
        sleep $DELAY
        exit 0
        ;;
   esac
done
