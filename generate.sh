#!/bin/bash
RED='\033[0;31m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
ORANGE='\033[0;33m' 
PUR='\033[0;35m'
GRN="\e[32m"
WHI="\e[37m"
NC='\033[0m'
echo ""
printf "$RED           ####################################    $GRN\n"
printf "$RED           ####################################    $GRN\n"
printf "$RED           #######                      #######    $GRN\n"
printf "$RED           #######                      #######    $GRN\n"
printf "$RED           ####### www.tatsumi-crew.net #######        \n"
printf "$RED           ###############      ###############        \n"
printf "$RED           ###############      ###############        \n"
printf "$RED           ###############      ###############        \n"
printf "$WHI           ###############      ###############        \n"
printf "$WHI           #######    ####      ####    #######        \n"
printf "$WHI           #######    ####      ####    #######        \n"
printf "$WHI           #######    ##############    #######        \n"
printf "$WHI           #######                      #######        \n"
printf "$WHI           ####################################        \n"
printf "$WHI           ####################################        \n"
printf "$NC           ------------------------------------        \n"  
printf "$NC            Random User Generator - NakoCoders        \n"  
printf "$NC           ------------------------------------        \n"  
cat <<EOF
EOF
curl=$(curl -s "https://randomuser.me/api/" -L)
first=$(echo $curl | grep -Po '(?<=first":")[^"]*')
last=$(echo $curl | grep -Po '(?<=last":")[^"]*')
street=$(echo $curl | grep -Po '(?<=street":")[^"]*')
city=$(echo $curl | grep -Po '(?<=city":")[^"]*')
state=$(echo $curl | grep -Po '(?<=state":")[^"]*')
postcode=$(echo $curl | grep -Po '(?<=postcode":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
phone=$(echo $curl | grep -Po '(?<=phone":")[^"]*')
cell=$(echo $curl | grep -Po '(?<=cell":")[^"]*')
printf "[+] Please Wait ... \n"
sleep 3
echo "=================================
First : $first
Last : $last
=================================
Street : $street
City : $city
State : $state
Postcode : $postcode
Phone : $phone 
Cell : $cell
=================================" >> hasil.txt
printf "[+] DONE ... \n"