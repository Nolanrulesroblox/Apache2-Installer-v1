#!/bin/bash

echo if you see this, i am working! To Stop this script at anytime, Please press CTRL+C
echo
echo before we start, Eenter your site now. 1 and 2
read -p "Enter website 1 www.YOURSITE.com: " site1
echo
read -p "Enter website 2 (can not be the same as Website 1) www.YOURSITE2.com: " site2
echo
echo
echo
read -p "Enter your Username (of your user on linux, used for Owning folders): " user
echo
printf "if you see your site : $site2 and $site1 this script is working correctly"
echo
sleep 1
printf "(loading) #"
echo
if [ -d "/var/www/" ]; then
  sudo rm -r /var/www/
fi
if [ ! -d "$DIRECTORY" ]; then
  sudo mkdir -p /var/www/
fi
printf "(loading) ##"
sleep 1
echo
printf "(loading) ###"
sleep 1
echo
printf "Loading Finished"
sleep 3
echo
#code is by NRRINC Media
echo

sudo apt-get install ssh python git apache2 mysql-server php -y

echo
echo
echo
printf "note: Apache is being turned off during editing, if the script fails, do sudo service apache2 restart. or Reboot your system."
sudo service apache2 stop
sleep 5
echo
echo
printf "Preparing to Delete Apache VAR/WWW/ files"
echo
echo
echo .
sleep 3
echo ..
sleep 3
echo ...
echo
printf "Success"
echo
echo
printf "Preparing to Build Apache VAR/WWW/ files"
echo
echo
echo .
sleep 3
echo ..
sleep 3
echo ...
echo
printf "Success"
echo
sleep 2

printf "************************************"
echo
printf "************************************"
echo
printf "************************************"
echo
RED='\033[0;31m'
NC='\033[0m' # No Color
GREEN='\033[1;32m'
BLUE='\033[1;34m'
ip address

printf "${RED}make sure to note your IP address.${NC}"
echo
printf "${RED}look for 192.168.#.### (like 192.168.0.### or 192.168.1.###)${NC}"
echo 
#code is by NRRINC Media
read -s -r -p "Press any key to continue"
echo
echo Making DIR 1/2
sudo mkdir -p /var/www/$site1/public_html
echo .
sleep 1
echo ..
sleep 1
echo ...
echo
echo Making DIR 2/2
sudo mkdir -p /var/www/$site2/public_html
echo .
sleep 1
echo ..
sleep 1
echo ...
echo
echo Done making DIRs, on to Owning!
echo .
sleep 1
echo ..
sleep 1
echo ...
echo
echo Owning Folders 1/3
sudo chown $user /var/www/$site1/public_html
echo .
sleep 1
echo ..
sleep 1
echo ...
echo
echo Owning Folders 2/3
sudo chown $user /var/www/$site2/public_html
echo .
sleep 1
echo ..
sleep 1
echo ...
echo
echo Owning Folders 3/3
sudo chown $user /var/www/
echo .
sleep 1
echo ..
sleep 1
echo ...
echo
echo owning finished
echo .
sleep 1
echo ..
sleep 1
echo ...
echo
printf "just as a fyi this is the HTML for site {$site1}."
echo
printf  "${RED}what to write is down below,(do not ctrl c.) when ready,${NC} press enter\n"
echo
printf 	"(this is your root doc, you put your html files here) (do not put this in your HTML doc)"
echo
printf  "${GREEN}<html>${NC}\n"
printf  "${GREEN}  <head>  ${NC}\n"
printf  "${GREEN}    <title>Welcome to {$site1}</title>  ${NC}\n"
printf  "${GREEN}  </head>  ${NC}\n"
printf  "${GREEN}  <body>  ${NC}\n"
printf  "${GREEN}   <h1>Success!  The {$site1} #virtual host is working!</h1>  ${NC}\n"
printf  "${GREEN}  </body>  ${NC}\n"
printf  "${GREEN}</html>  ${NC}\n"
echo
printf 	"${BLUE}when you are done, Press CTRL+X and press Y THEN press enter.${NC}"
echo
read -s -r -p "Press enter to continue"

sudo nano /var/www/$site1/public_html/index.html
#code is by NRRINC Media
echo
printf "Now on to Site 2, lets do the same thing AGAIN :D "
sleep 3
echo 
echo
printf "just as a fyi this is the HTML for site {$site2}."
echo
echo
printf  "${RED}what to write is down below,(do not ctrl c.) when ready,${NC} press enter\n"
echo
printf 	"(this is your root doc, you put your html files here) (do not put this in your HTML doc)"
echo
printf  "${GREEN}<html>${NC}\n"
printf  "${GREEN}  <head>  ${NC}\n"
printf  "${GREEN}    <title>Welcome to {$site2}</title>  ${NC}\n"
printf  "${GREEN}  </head>  ${NC}\n"
printf  "${GREEN}  <body>  ${NC}\n"
printf  "${GREEN}   <h1>Success!  The {$site2} #virtual host is working!</h1>  ${NC}\n"
printf  "${GREEN}  </body>  ${NC}\n"
printf  "${GREEN}</html>  ${NC}\n"
echo
printf 	"${BLUE}when you are done, Press CTRL+X and press Y THEN press enter.${NC}"
echo
read -s -r -p "Press enter to continue"

sudo nano /var/www/$site2/public_html/index.html

echo

printf "everything seams to be working, now on to the netwroking of Apache!"
echo
printf "im gonna clear the sites-available folder"
echo .
sleep 2
echo ..
sleep 3
echo ...
echo
echo
printf "small update.... i cant OK MOVING ON!"
echo .
sleep 2
echo ..
sleep 3
echo ...
echo
printf "i am done... so now on to the networking (also im clearing screen for ya)"
sleep 5
echo
clear
echo
printf "now lets edit the networking file for {$site1}"
#code is by NRRINC
echo
printf "just as a fyi this is the HTML for site {$site1}."
echo
printf  "${RED}what to write is down below,(do not ctrl c.) when ready,${NC} press enter\n"
echo
printf 	"(Remember to remove the Brackets if copy and pasting. ex: (yoursite.com) should be yoursite.com"
echo
printf  " (also, where is says www, that is where your subdomain goes."
echo
printf  "${GREEN}<VirtualHost *:80>${NC}\n"
printf  "${GREEN} ServerAdmin (your admin email from the domain)  ${NC}\n"
printf  "${GREEN} ServerName {$site1} ${NC}\n"
printf  "${GREEN} ServerAlias www.{$site1}${NC}\n"
printf  "${GREEN} DocumentRoot /var/www/$site1/public_html ${NC}\n"
printf  "${GREEN} CustomLog ${APACHE_LOG_DIR}/access.log combined ${NC}\n"
printf  "${GREEN}</VirtualHost>"
echo
echo
printf "here is a Demo of a Root site" 
echo
printf "<VirtualHost *:80>"
echo
printf "    ServerAdmin admin@example.com"
echo
printf "    ServerName example.com"
echo
printf "    ServerAlias www.example.com"
echo
printf "    DocumentRoot /var/www/example.com/public_html"
echo
printf "    ErrorLog ${APACHE_LOG_DIR}/error.log"
echo
printf "    CustomLog ${APACHE_LOG_DIR}/access.log combined"
echo
printf "</VirtualHost>"
echo
echo
printf "here is a Demo of a Subdomain site"
echo
printf "<VirtualHost *:80>"
echo
printf "    ServerAdmin admin@example.com"
echo
printf "    ServerName hello.example.com"
echo
printf "    ServerAlias hello.example.com"
echo
printf "    DocumentRoot /var/www/example.com/public_html"
echo
printf "    ErrorLog ${APACHE_LOG_DIR}/error.log"
echo
printf "    CustomLog ${APACHE_LOG_DIR}/access.log combined"
echo
printf "</VirtualHost>"
echo
echo
printf 	"${BLUE}when you are done, Press CTRL+X and press Y THEN press enter.${NC}"
echo
read -s -r -p "Press enter to continue"

sudo nano /etc/apache2/sites-available/$site1.conf

printf "got to do it again... Oof."
echo
echo
printf "now lets edit the networking file for {$site2}"

echo
printf "just as a fyi this is the HTML for site {$site2}."
echo
printf  "${RED}what to write is down below,(do not ctrl c.) when ready,${NC} press enter\n"
echo
printf 	"(Remember to remove the Brackets if copy and pasting. ex: (yoursite.com) should be yoursite.com"
printf  "(also, where is says www, that is where your subdomain goes."
echo
printf  "${GREEN}<VirtualHost *:80>${NC}\n"
printf  "${GREEN} ServerAdmin (your admin email from the domain)  ${NC}\n"
printf  "${GREEN} ServerName {$site2} ${NC}\n"
printf  "${GREEN} ServerAlias www.{$site2}${NC}\n"
printf  "${GREEN} DocumentRoot /var/www/$site2/public_html ${NC}\n"
printf  "${GREEN} CustomLog ${APACHE_LOG_DIR}/access.log combined ${NC}\n"
printf  "${GREEN}</VirtualHost>"
echo
echo
printf "here is a Demo of a Root site" 
echo
printf "<VirtualHost *:80>"
echo
printf "    ServerAdmin admin@example.com"
echo
printf "    ServerName example.com"
echo
printf "    ServerAlias www.example.com"
echo
printf "    DocumentRoot /var/www/example.com/public_html"
echo
printf "    ErrorLog ${APACHE_LOG_DIR}/error.log"
echo
printf "    CustomLog ${APACHE_LOG_DIR}/access.log combined"
echo
printf "</VirtualHost>"
echo
echo
printf "here is a Demo of a Subdomain site"
echo
printf "<VirtualHost *:80>"
echo
printf "    ServerAdmin admin@example.com"
echo
printf "    ServerName hello.example.com"
echo
printf "    ServerAlias hello.example.com"
echo
printf "    DocumentRoot /var/www/example.com/public_html"
echo
printf "    ErrorLog ${APACHE_LOG_DIR}/error.log"
echo
printf "    CustomLog ${APACHE_LOG_DIR}/access.log combined"
echo
printf "</VirtualHost>"
echo
echo
printf 	"${BLUE}when you are done, Press CTRL+X and press Y THEN press enter.${NC}"
echo
read -s -r -p "Press enter to continue"

sudo nano /etc/apache2/sites-available/$site2.conf

echo
echo
printf "wow, we already got a working website (besides the port forwarding stuff)"
echo
echo
printf "now we are gonna enable to sites"
sudo a2ensite $site1.conf
sudo a2ensite $site2.conf
echo 
echo
echo
printf "we are fully working, i will die. if you ever want to run me again,"
printf " i reinstall apache just as a fyi.... *i delete all configs and data "
printf " from /etc/apache2/ and /var/www/ so... GL,HF - Nolan of NRRINC Media"
echo
printf "you can close me with CTRL + C or by waiting 30 seconds..."
sleep 30
exit 