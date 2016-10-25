#!/usr/bin/env bash
apt-get install -y apache2
cd /var/www/
wget https://raw.githubusercontent.com/JulioConchas/OpenStack/master/index.html 
