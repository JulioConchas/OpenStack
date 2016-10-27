#!/usr/bin/env bash
echo "##### installing apache #####"

apt-get install -y apache2

echo "##### apache installed #####"

echo "##### downloadind web microservice #####"

cd /var/www/html
rm index.html
wget https://raw.githubusercontent.com/JulioConchas/OpenStack/master/index.html 

echo "##### web microservice downloaded #####"

echo "##### installing mysql-server #####"

apt-get install -y mysql-server
mysql --version

echo "##### mysql-server installed #####"
