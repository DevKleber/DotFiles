#!/bin/bash

name="Atualizar servers SIGAMA"
menuItemPath="/usr/share/applications/AtualizarServerSigama.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/atualizar_server/atualizar_sigama.sh
Comment=
Terminal=true
Icon=$pathImagesMenu/atualizar_server.png
Type=Application
Categories=Atualizar_server;"| sudo tee $menuItemPath
fi