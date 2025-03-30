#!/bin/bash

name="Servidor Infraestrutura - Ipê Web"
Comment="Acessa o servidor de infraestrutura onde rodam serviços como Bitwarden, BI, Zabbix, Evolution API
..."

menuItemPath="/usr/share/applications/serversipeweb_infra.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/ipewebinfra.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi