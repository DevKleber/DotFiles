#!/bin/bash

name="Ipe web Hostgator"
Comment="Conectar ao servidor Hostgator Ipe web"
menuItemPath="/usr/share/applications/serversipehostgator.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/ipehostgator.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi