#!/bin/bash


name="SIAGRO - VPS banco e código"
Comment="Conectar ao servidor SIAGRO"
menuItemPath="/usr/share/applications/serverssiagro.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/siagro_vps.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi