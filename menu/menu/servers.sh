#!/bin/bash
menuMenuserversName="Servers"
menuMenuserversDescription="Conectar ao servidor"
menuMenuserversImage="$pathImagesMenu/servers.png"
menuMenuserversFile="cinnamon-servers.directory"
menuMenuserversCategory="Servers"

sudo touch ~/.local/share/desktop-directories/$menuMenuserversFile

echo "[Desktop Entry] 
Name=$menuMenuserversName 
Comment=$menuMenuserversDescription
Icon=$menuMenuserversImage
Categories=$menuMenuserversCategory
Type=Directory" | sudo tee ~/.local/share/desktop-directories/$menuMenuserversFile


# pathMenu=/etc/xdg/menus/cinnamon-applications.menu 
# sudo sed -i '/<Merge type="menus"\/>/a <Menuname>'$menuMenuserversName'</Menuname>' $pathMenu
# sudo sed -i '/<\/Layout>/a <Menu> \n <Name>'$menuMenuserversName'<\/Name> \n <Directory>'$menuMenuserversFile'<\/Directory> \n <Include> \n <And> \n <Category>'$menuMenuserversCategory'<\/Category> \n <\/And> \n <\/Include> \n <\/Menu>' $pathMenu