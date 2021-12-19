#!/bin/bash

menuItemPhp74Path="/usr/share/applications/Php74.desktop"

sudo touch $menuItemPhp74Path

echo "[Desktop Entry]
Name=php74
Exec=/home/kleber/atalhos/php/php7.4.sh
Comment=
Terminal=true
Icon=$pathImagesMenu/php.png
Type=Application
Categories=PhpVersion;"| sudo tee $menuItemPhp74Path