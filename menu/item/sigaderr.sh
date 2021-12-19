#!/bin/bash

menuItemSigaderrPath="/usr/share/applications/sigaderr.desktop"

sudo touch $menuItemSigaderrPath

echo "[Desktop Entry]
Name=sigaderr
Exec=/home/kleber/atalhos/servers/sigaderrgoogle.sh
Comment=Conectar ao servidor sigaderr
Terminal=true
Icon=$pathImagesMenu/servers.png
Type=Application
Categories=Servers;"| sudo tee $menuItemSigaderrPath