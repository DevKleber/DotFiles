#!/bin/bash

#!/bin/bash

name="SIGEAL - Banco de homologação"
Comment="Conectar ao servidor de homologação SIGEAL"
menuItemPath="/usr/share/applications/serverssigeal-homologacao.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/sigeal/sigeal-homologacao.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi