#!/bin/bash

name="Atualizar servers Sisdiagro"
menuItemPath="/usr/share/applications/AtualizarServerSisdiagro.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/atualizar_server/atualizar_sisdiagro.sh
Comment=
Terminal=true
Icon=$pathImagesMenu/atualizar_server.png
Type=Application
Categories=Atualizar_server;"| sudo tee $menuItemPath
fi