#!/usr/bin/env bash
apt-get install -y apache2
cd /var/www/html
rm index.html
wget https://raw.githubusercontent.com/JulioConchas/OpenStack/master/index.html 
apt-get install mysql-server
mysql --version
