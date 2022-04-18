#!/bin/bash

PROGRAMAS_PARA_INSTALAR=(
  php8.1 
  libapache2-mod-php8.1 
  php8.1-mysql
  php8.1-mcrypt
  php8.1-zip
  php8.1-gettext
  php8.1-common
  php8.1-xml
  php8.1-dom
  php8.1-pgsql
  php8.1-mbstring
  php8.1-curl
  php8.1-gd
  php8.1-dev
  php8.1-memcached
  php8.1-json
  php8.1-redis
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
