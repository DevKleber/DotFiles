#!/bin/bash

name="SISDIAGRO - Produção"
Comment="Conectar ao servidor SISDIAGRO - Produção"
menuItemPath="/usr/share/applications/serversisdiagro.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/sisdiagro-producao.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi