#!/bin/bash


name="Servidor NAS - Ipê Web"
Comment="Acessa o servidor NAS para armazenamento e compartilhamento de dados"

menuItemPath="/usr/share/applications/serversipeweb_nas.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/ipeweb_nas.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi