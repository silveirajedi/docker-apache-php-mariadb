#!/bin/bash

##################################################
# SCRIPT PARA LINUX VERSÃO 1.0 - Leandro Silveira
##################################################

iniciarDocker() {
  docker-compose up -d
  echo
  echo "--== Aplicando Reescrita no Apache ==--"
  echo
  sleep 2
  docker container exec projeto-app a2enmod rewrite
  docker container restart projeto-app
  echo
  echo "--== Atualizando Composer ==--"
  echo
  sleep 2
  docker container exec projeto-app composer update
  echo
  echo "--== SERVIDOR INICIADO! BORA CODAR ==--"
  echo "by Leandro Silveira"
  echo
}

finalizarDocker() {
  docker-compose down
  echo
  echo "--== SERVIDOR FINALIZADO! HORA DE TOMAR UM CAFÉ ==--"
  echo "by Leandro Silveira"
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
