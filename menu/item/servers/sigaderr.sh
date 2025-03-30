#!/bin/bash


name="SIGADERR"
Comment="Conectar ao servidor sigaderr"
menuItemPath="/usr/share/applications/serversSigaderr.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/sigaderr.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi