#!/bin/bash

#!/bin/bash

name="ADAB - código produção apache"
Comment="Servidor - ADAB-SIDAB-PRD para hospedar a Aplicação de Produção do Sistema SIDAB"
menuItemPath="/usr/share/applications/serversADAB-SIDAB-PRD.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/bahia/ADAB-SIDAB-PRD.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi