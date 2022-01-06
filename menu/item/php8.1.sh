#!/bin/bash

menuItemPhp8Path="/usr/share/applications/Php81.desktop"

sudo touch $menuItemPhp8Path

echo "[Desktop Entry]
Name=php8.1
Exec=/home/kleber/atalhos/php/php8.1.sh
Comment=
Terminal=true
Icon=$pathImagesMenu/php2.png
Type=Application
Categories=PhpVersion;"| sudo tee $menuItemPhp8Path