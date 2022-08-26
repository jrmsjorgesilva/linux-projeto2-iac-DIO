#!/bin/bash

# instalação inicial
echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
apt-get install wget -y

# mensagem de espera
echo "Baixando e copiando os arquivos da aplicação..."

# script principal
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/



