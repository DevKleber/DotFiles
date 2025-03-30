#!/bin/bash


name="SIDAAM - Banco de Dados produção"
Comment="Conectar ao servidor SIDAAM - Banco de Dados produção"
menuItemPath="/usr/share/applications/serverssidaam-bancoproducao.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/sidaam-bancoproducao.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi