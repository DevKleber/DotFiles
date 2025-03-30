#!/bin/bash


name="SIGAMA - Banco de Dados produção"
Comment="Conectar ao servidor SIGAMA - Banco de Dados produção"
menuItemPath="/usr/share/applications/serverssigamabancodados.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/sigamabancodados-producao.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi