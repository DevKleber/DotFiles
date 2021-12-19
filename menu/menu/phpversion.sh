#!/bin/bash
menuMenuPhpversionName="Php version"
menuMenuPhpversionDescription=""
menuMenuPhpversionImage="$pathImagesMenu/php2.png"
menuMenuPhpversionFile="cinnamon-phpversion.directory"

pathMenu=/etc/xdg/menus/cinnamon-applications.menu 
sudo touch ~/.local/share/desktop-directories/$menuMenuPhpversionFile

echo "[Desktop Entry] 
Name=$menuMenuPhpversionName 
Comment=$menuMenuPhpversionDescription
Icon=$menuMenuPhpversionImage
Type=Directory" | sudo tee ~/.local/share/desktop-directories/$menuMenuPhpversionFile


sudo sed -i '/<Merge type="menus"\/>/a <Menuname>'$menuMenuPhpversionName'</Menuname>' $pathMenu
sudo sed -i '/<\/Layout>/a <Menu> \n <Name>'$menuMenuPhpversionName'<\/Name> \n <Directory>'$menuMenuPhpversionFile'<\/Directory> \n <Include> \n <And> \n <Category>PhpVersion<\/Category> \n <\/And> \n <\/Include> \n <\/Menu>' $pathMenu