#!/bin/bash

name="BARTER"
Comment="Conectar ao servidor BARTER"
menuItemPath="/usr/share/applications/serversbartergooglecloud.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/bartergooglecloud.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi