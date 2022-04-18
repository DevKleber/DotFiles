#!/bin/bash


PROGRAMAS_PARA_INSTALAR=(
  php7.1 
  libapache2-mod-php7.1 
  php7.1-mysql
  php7.1-mcrypt
  php7.1-zip
  php7.1-gettext
  php7.1-common
  php7.1-xml
  php7.1-dom
  php7.1-pgsql
  php7.1-mbstring
  php7.1-curl
  php7.1-gd
  php7.1-dev
  php7.1-memcached
  php7.1-json
  php7.1-redis
)

sudo apt update -y

# Install programs in apt - shell
for nome_do_programa in ${PROGRAMAS_PARA_INSTALAR[@]}; do
  if ! dpkg -l | grep -q $nome_do_programa; then # Only install if not already installed
    apt install "$nome_do_programa" -y
  else
    echo "[INSTALADO] - $nome_do_programa"
  fi
done
