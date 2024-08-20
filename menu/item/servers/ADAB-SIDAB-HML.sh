#!/bin/bash

#!/bin/bash

name="ADAB - Homologação"
Comment="Servidor - ADAB-SIDAB-HML para hospedar a Aplicação de Homologação do Sistema SIDAB"
menuItemPath="/usr/share/applications/serversADAB-SIDAB-HML.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/bahia/ADAB-SIDAB-HML.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi