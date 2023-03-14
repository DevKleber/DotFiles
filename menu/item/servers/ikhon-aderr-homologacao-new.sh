#!/bin/bash

#!/bin/bash

name="Ikhon Aderr Homologacao New"
Comment="Conectar ao servidor Ikhon Aderr Homologacao new"
menuItemPath="/usr/share/applications/ikhon-aderr-homologacao-new.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath

name="Ikhon Aderr Homologacao"
Comment="Conectar ao servidor Ikhon Aderr Homologacao"
menuItemPath="/usr/share/applications/ikhon-aderr-homologacao.desktop"

echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/ikhon-aderr-homologacao-new.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi