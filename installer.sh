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

debconf-set-selections <<< 'mysql-server mysql-server/root_password password 1234'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password 1234'
apt-get install -y mysql-server
mysql --version

echo "##### mysql-server installed #####"
