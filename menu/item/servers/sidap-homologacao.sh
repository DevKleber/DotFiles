#!/bin/bash


name="SIDAP - Homologação"
Comment="Conectar ao servidor SIDAP - Homologação"
menuItemPath="/usr/share/applications/serverssidap-homologacao.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/sidap-homologacao.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi