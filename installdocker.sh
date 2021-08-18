#!/bin/bash
echo "############# INICIANDO A INSTALAÇÃO DO DOCKER ##############"
curl -fsSl  https://get.docker.com/| sh
echo "############# VERSÃO DO DOCKER ##############"
docker version
echo "############# INSTALAÇÃO DO DOCKER CONCLUIDA #############"

echo "############## INICIANDO A INSTALAÇÀO DOCKER-COMPOSE #############"
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
echo "############## APLICANDO PERMISSÃO NO EXECUTáVEL #############"
chmod +x /usr/local/bin/docker-compose
cho "############## APLICANDO ATALHO NO EXECUTáVEL #############"
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
echo "############## VERSÃO DO DOCKER-COMPOSE #############"
docker-compose version
echo "############## INSTALANDO A STACK DO ZABBIX #############"
docker-compose up -d
