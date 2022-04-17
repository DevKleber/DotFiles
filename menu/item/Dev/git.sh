#!/bin/bash

name="Git - Atualizar meus repositórios"
Comment="Atualizar meus repositórios"
menuItemPath="/usr/share/applications/shellscriptsGit.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/shellscripts/git/git.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/gitAtualizar.png
Type=Application
Categories=Dev;"| sudo tee $menuItemPath
fi