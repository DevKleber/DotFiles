#!/bin/bash

#!/bin/bash

name="Ipê web código"
Comment="Conectar ao servidor Ipê web código"
menuItemPath="/usr/share/applications/serversipewebcodigo.sh.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=/home/$USER/atalhos/servers/ipewebcodigo.sh
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemPath
fi