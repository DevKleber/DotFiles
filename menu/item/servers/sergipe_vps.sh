#!/bin/bash


name="SIDASE SERGIPE - VPS banco e código"
Comment="Conectar ao servidor SERGIPE"
menuItemPath="/usr/share/applications/serverssergipe_vps.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/sergipe_vps.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi