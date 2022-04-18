#!/bin/bash

name="Atualizar linux e programas"
Comment=""
menuItemPath="/usr/share/applications/shellscriptsScriptsToRun.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/shellscripts/scriptsToRun/run.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/atualizar_server.png
Type=Application
Categories=Dev;"| sudo tee $menuItemPath
fi