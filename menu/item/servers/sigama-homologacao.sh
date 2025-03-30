#!/bin/bash


name="SIGAMA - Homologação"
Comment="Conectar ao servidor SIGAMA - Homologação"
menuItemPath="/usr/share/applications/serverssigama-homologacao.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/sigama-homologacao.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi