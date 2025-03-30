#!/bin/bash

name="ADAB - Banco de dados produção"
Comment="Servidor - ADAB-SIDAB-DB-PRD para hospedar o Banco PostgreSQL de Produção para o Sistema SIDAB"
menuItemPath="/usr/share/applications/serversADAB-SIDAB-DB-PRD.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/bahia/ADAB-SIDAB-DB-PRD.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi