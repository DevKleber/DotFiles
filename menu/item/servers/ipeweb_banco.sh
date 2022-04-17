#!/bin/bash

#!/bin/bash

name="Ipê web banco"
Comment="Conectar ao servidor Ipê web banco de dados"
menuItemPath="/usr/share/applications/serversipewebbanco.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/ipewebbanco.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi