#!/bin/bash

name="Switch Primary Monitor"
Comment="Script para alternar o monitor primário"
menuItemPath="/usr/share/applications/switch_primary_monitor.desktop"

# se não existir, cria o item
if [ ! -f $menuItemPath ]; then
sudo touch $menuItemPath
echo "[Desktop Entry]
Name=$name
Exec=sudo /home/$USER/shellscripts/scriptsToRun/changemonitor
Comment=$Comment
Terminal=true
Icon=$pathImagesMenu/monitor.png
Type=Application
Categories=Dev;"| sudo tee $menuItemPath
fi
