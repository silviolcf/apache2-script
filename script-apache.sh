#!/bin/bash

echo "atualizar servidor"
sudo apt-get update
sudo apt-get upgrade
echo "servidor atualizado"
echo "instalando apache2"

sudo apt install apache2 -y

echo "apache2 instalado"
echo "instalando unzip"

sudo apt install unzip -y

echo "unzip instalado"
echo "baixando conteudo"
sudo wget -c -P /tmp/ https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "conteudo baixado"
echo "descompactando conteudo"
sudo unzip /tmp/main.zip
echo "conteudo descompactado"

echo "movendo arquivos"
sudo cp -R linux-site-dio-main/* /var/www/html/
sudo rm -rf linux-site-dio-main
echo "arquivos movidos"

echo "reiniciando apache"
sudo systemctl restart apache2
echo "apache reiniciado"

echo "DEPLOY FINALIZADO"


