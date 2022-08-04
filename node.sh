#!/bin/bash

# Caso tenha problema com uma versão já instalada, vamos remover e instalar novamente. 
# sudo rm /etc/apt/sources.list.d/nodesource.list /etc/apt/sources.list.d/nodesource.list.save
# sudo apt --fix-broken install
# sudo apt update
# sudo apt remove nodejs
# sudo apt remove nodejs-doc
# sudo apt autoremove


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
