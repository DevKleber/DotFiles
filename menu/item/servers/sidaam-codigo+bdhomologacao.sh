#!/bin/bash

#!/bin/bash

name="SIDAAM - Código + Banco de Dados homologação"
Comment="Conectar ao servidor SIDAAM - Código + Banco de Dados homologação"
menuItemPath="/usr/share/applications/serverssidaam-codigo+bdhomologacao.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/sidaam-codigo+bdhomologacao.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi