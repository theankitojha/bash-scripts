######################################################################
##
##   Docker Compose Installation Script
##   Written By: Ankit Ojha
##   URL: ankitojha.com.np 
##   Update on: Jan 9, 2023
##
######################################################################

read -p "Enter Docker Compose Version to install:" DC_VERSION
echo "INSTALLING DOCKER COMPOSE IN YOUR SYSTEM........."
echo " "
sudo curl -SL https://github.com/docker/compose/releases/download/v$DC_VERSION/docker-compose-`uname -s`-`uname -m` -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose
echo " "
echo "VALIDATING THE INSTALLATION....."
echo "`docker-compose -v` - is installed Successfully"
