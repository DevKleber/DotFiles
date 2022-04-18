#!/bin/bash

#!/bin/bash

name="SIDAPI - google cloud"
Comment="Conectar ao servidor SIDAPI - google cloud"
menuItemPath="/usr/share/applications/serverssidapi-sisdiagro-googlecloud.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/sidapi-sisdiagro-googlecloud.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi