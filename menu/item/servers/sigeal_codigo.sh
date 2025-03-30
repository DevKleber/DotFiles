#!/bin/bash


name="SIGEAL - Produção apache código"
Comment="Conectar ao servidor de código produção SIGEAL"
menuItemPath="/usr/share/applications/serverssigeal-apacheproducao.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/sigeal/sigeal-apacheproducao.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi