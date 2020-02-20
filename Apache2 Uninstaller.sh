#!/bin/bash
echo
sudo service apache2 stop

RED='\033[0;31m'
NC='\033[0m' # No Color
GREEN='\033[1;32m'
BLUE='\033[1;34m'
printf "Everything from /var/www/ and etc/apache2/ will be gone.)"
echo
printf "make sure to make backups if needed."
echo
read -p "Uninstall apache? (EVERYTHING WILL BE GONE FOREVER) [yn]" answer
if [[ $answer = y ]] ; then
  echo
echo
sleep 1
printf "(loading) #"
echo
printf "(loading) ##"
sleep 1
echo
printf "(loading) ###"
sleep 1
echo
printf "Loading Finished"
sleep 1
echo
echo
echo .
echo ..
echo ...
echo
echo deleting /var/www/
sudo rm -r /var/www/
echo
clear
echo .
sleep 3
echo ..
echo ...
echo
printf "${BLUE}Completed or File not found which is good${NC}"
echo
echo Deleting /etc/apache2/
sudo rm -r /etc/apache2/
echo
echo
echo .
sleep 3
echo ..
sleep 3
echo ...
printf "${BLUE}Completed or File not found which is good${NC}"
sudo apt-get --purge remove apache2 -y
printf "${RED}m${NC}y ${BLUE}s${RED}c${NC}r${BLUE}i${RED}p${NC}t${BLUE} i${RED}s ${NC}d${BLUE}o${RED}n${NC}e. ${BLUE}n${RED}o${NC}w ${BLUE}r${RED}u${NC}n ${BLUE}A${RED}p${NC}a${BLUE}a${RED}c${NC}h${BLUE}e${RED}2 S${NC}e${BLUE}t${RED}u${NC}p!"
echo
exit 

fi
if [[ $answer = n ]] ; then
	sudo service apache2 start
	exit
fi 
exit 