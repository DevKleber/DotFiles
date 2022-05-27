#!/bin/bash

name="Reiniciar servers SIDAPI"
menuItemPath="/usr/share/applications/ReiniciarServerSidapi.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/atualizar_server/reiniciarservidor_sidapi.sh
Comment=
Terminal=true
Icon=$pathImagesMenu/atualizar_server.png
Type=Application
Categories=Atualizar_server;"| sudo tee $menuItemPath
fi