#!/bin/bash

#!/bin/bash

name="SIGEAL - Banco de dados produção"
Comment="Conectar ao servidor de banco produção SIGEAL"
menuItemPath="/usr/share/applications/serverssigeal-bancodedados-producao.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/sigeal/sigeal-bancodedados-producao.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi