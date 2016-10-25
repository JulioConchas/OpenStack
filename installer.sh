#!/usr/bin/env bash
apt-get install -y apache2
cd /var/www/html/
pwd
wget https://raw.githubusercontent.com/JulioConchas/OpenStack/master/index.html 
