#!/bin/bash

name="FALCON"
Comment="Acessa o servidor FALCON onde rodam serviços como banco de dados, API"

menuItemPath="/usr/share/applications/serversfalcon.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/falcon.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi