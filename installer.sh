#!/usr/bin/env bash
apt-get install -y apache2
cd /var/www/html
rm index.html
#pwd
#echo "-----------------------"
#ls
#echo "-----------------------"
wget https://raw.githubusercontent.com/JulioConchas/OpenStack/master/index.html 

