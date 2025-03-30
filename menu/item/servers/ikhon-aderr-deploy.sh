#!/bin/bash

name="Ikhon Aderr Homologacao Deploy"
Comment="Conectar ao servidor Ikhon Aderr Homologacao Deploy"
menuItemPath="/usr/share/applications/ikhon-aderr-deploy.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/ikhon-aderr-deploy.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi