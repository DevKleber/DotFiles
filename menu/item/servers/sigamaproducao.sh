#!/bin/bash


name="SIGAMA - Produção"
Comment="Conectar ao servidor SIGAMA - Produção"
menuItemPath="/usr/share/applications/serverssigamaproducao.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/sigamaproducao-apache.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi