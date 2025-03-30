#!/bin/bash

name="Conexões"
Comment="Escolher em qual servidor conectar"
menuItemPath="/usr/share/applications/conexoes.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/var/www/html/shellscript/conexao.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi