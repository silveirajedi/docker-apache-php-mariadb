#!/bin/bash

##################################################
# SCRIPT PARA LINUX/MAC VERSÃO 1.0 - Leandro Silveira
##################################################

iniciarDocker() {
  docker-compose up -d
  clear
  echo
  echo "--== Atualizando php.ini ==--"
  echo
  sleep 2
  docker container exec projeto-app cp /var/www/html/server-config/php.ini /usr/local/etc/php
  clear
  echo
  echo "--== Aplicando Reescrita no Apache ==--"
  echo
  sleep 2
  docker container exec projeto-app a2enmod rewrite
  docker container restart projeto-app
  clear
  echo
  echo "--== Atualizando Composer ==--"
  echo
  sleep 2
  docker container exec projeto-app composer update
  clear
  echo
  echo "--=======================--"
  echo "--== SERVIDOR INICIADO ==--"
  echo "--=======================--"
  echo
}

finalizarDocker() {
  docker-compose down
  clear
  echo
  echo "--=========================--"
  echo "--== SERVIDOR FINALIZADO ==--"
  echo "--=========================--"
  echo
}

case $1 in
start)
  iniciarDocker
  exit 0
  ;;
stop)
  finalizarDocker
  exit 1
  ;;
*)
  echo
  echo "Use start para iniciar o Docker e stop para finalizar o Docker"
  echo
  exit 2
  ;;
esac
