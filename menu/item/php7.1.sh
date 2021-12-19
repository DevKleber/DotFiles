#!/bin/bash

menuItemPhp71Path="/usr/share/applications/Php71.desktop"

sudo touch $menuItemPhp71Path

echo "[Desktop Entry]
Name=php71
Exec=/home/kleber/atalhos/php/php7.1.sh
Comment=
Terminal=true
Icon=$pathImagesMenu/php.png
Type=Application
Categories=PhpVersion;"| sudo tee $menuItemPhp71Path