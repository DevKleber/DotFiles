#!/bin/bash

#Pegando ultima versão LTS do node
content=`wget -O - https://nodejs.org/en/`
versiontext=$(echo "$content" | grep -o -P '(?<=title="Download).*(?=LTS)')
version=$(echo $versiontext | sed 's/[^0-9 .]//g' | sed 's/^ *//g')
nodeVersion=(${versiontext//./ })

## Node ## 
echo "downloading Node "
curl -fsSL "https://deb.nodesource.com/setup_${nodeVersion[0]}.x" | sudo -E bash -

comando="nodejs"

sudo apt-get update

if ! dpkg -l | grep -q $comando; then # Only install if not already installed
    sudo apt-get install "$comando" -y
  else
    echo "[INSTALADO] - $comando"
fi