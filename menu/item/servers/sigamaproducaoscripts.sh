#!/bin/bash


name="SIGAMA - Produção scripts"
Comment="Conectar ao servidor SIGAMA - Produção Scripts"
menuItemPath="/usr/share/applications/serverssigamaproducaoscripts.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/sigamaproducao-scripts.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi