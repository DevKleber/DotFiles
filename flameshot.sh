#!/bin/bash

#pegando a ultima versão do slack

content=`wget -O - https://github.com/flameshot-org/flameshot/releases`
flameShotVersiontext=$(echo "$content" | grep -o -P '(?<=/flameshot-org/flameshot/releases/download/).*(?=.debian-10.amd64.deb)')
flameshotVersionArray=(${flameShotVersiontext// / })

wget -c "https://github.com/flameshot-org/flameshot/releases/download/${flameshotVersionArray[0]}.debian-10.amd64.deb" -P "$DIRETORIO_DOWNLOADS"