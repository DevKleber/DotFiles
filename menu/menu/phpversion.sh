#!/bin/bash
menuMenuPhpversionName="Php version"
menuMenuPhpversionDescription=""
menuMenuPhpversionImage="$pathImagesMenu/php2.png"
menuMenuPhpversionFile="cinnamon-phpversion.directory"

# ferifica se o menu já existe
fileDirectory=~/.local/share/desktop-directories/$menuMenuPhpversionFile


# se não existir, cria o item
if [ ! -f $fileDirectory ]; then
    sudo touch $fileDirectory
    echo "[Desktop Entry] 
    Name=$menuMenuPhpversionName 
    Comment=$menuMenuPhpversionDescription
    Icon=$menuMenuPhpversionImage
    Categories=PhpVersion
    Type=Directory" | sudo tee $fileDirectory
fi

# echo "[Desktop Entry] 
# Name=$menuMenuPhpversionName 
# Comment=$menuMenuPhpversionDescription
# Icon=$menuMenuPhpversionImage
# Type=Directory" | sudo tee $fileDirectory


pathMenu=/etc/xdg/menus/cinnamon-applications.menu 

# se não existir o menu, cria
flameShotVersiontext=$(grep -r 'Php version' $pathMenu)
if [ -z "$flameShotVersiontext" ]; then
    sudo sed -i '/<Merge type="menus"\/>/a <Menuname>'$menuMenuPhpversionName'</Menuname>' $pathMenu
    sudo sed -i '/<\/Layout>/a <Menu> \n <Name>'$menuMenuPhpversionName'<\/Name> \n <Directory>'$menuMenuPhpversionFile'<\/Directory> \n <Include> \n <And> \n <Category>PhpVersion<\/Category> \n <\/And> \n <\/Include> \n <\/Menu>' $pathMenu
fi
