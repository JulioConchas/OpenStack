#!/usr/bin/env bash
apt-get install apache2
wget https://raw.githubusercontent.com/JulioConchas/OpenStack/master/index.html 
mv index.html /var/www/
