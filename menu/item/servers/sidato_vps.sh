#!/bin/bash


name="SIDATO - VPS banco e código"
Comment="Conectar ao servidor SIDATO"
menuItemPath="/usr/share/applications/serverssidato_vps.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/sidato_vps.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi