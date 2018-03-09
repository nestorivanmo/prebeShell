clear

RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
STD='\033[0;0;39m'
CYAN='\033[1;96m'


                
echo -e " ${GREEN}                                       _____  __       _______ ______   _____       _                 ${STD}  "
echo -e " ${GREEN}                                      (_____) | |     (_______) _____) / ___ \     / |        ${STD}    "
echo -e " ${GREEN}                                          | | | |     | /  ___| |        | |  \   / /         ${STD}   "
echo -e " ${GREEN}                                          | | | |   | |  ___)|  | (___) |   | |   \ \         ${STD}  "
echo -e " ${GREEN}                                       ___| | | |___| | |____|  \____/| |___| |____) )        ${STD}  "
echo -e " ${GREEN}                                      (____/   \______ |_______)_____/ \_____(______/         ${STD} "

echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "
echo -e  "  "


	 echo -e "       ${YELLOW}                                          1. 19Prebebés ${STD} " 
	 echo -e "       ${YELLOW}                                          2. Random Giska       ${STD}" 
        echo -e "       ${YELLOW}                                          3. Mozek       ${STD}" 
        echo -e "       ${YELLOW}                                          4. Salir                   ${STD}" 
echo " "
read -p "                                                 Opciones [ 1 - 4 ]:  " elige
        case $elige in
                1) ./19prebebes.sh ;;
                2) ./nivel1.sh ;;
                3) ./memoria.sh;;
              	4) exit 0;;
                *) echo -e "                                                                                    ${RED}Error ${STD}" && sleep 0$
        esac

