#!/bin/bash
menuName="Atualizar servers"
menuDescription=""
menuImage="$pathImagesMenu/atualizar_server.png"
menuFile="cinnamon-atualizar_server.directory"
category="Atualizar_server"

fileDirectory=~/.local/share/desktop-directories/$menuFile

# se não existir, cria o item
if [ ! -f $fileDirectory ]; then
sudo touch $fileDirectory
echo "[Desktop Entry] 
Name=$menuName  
Comment=$menuDescription 
Icon=$menuImage 
Categories=$category 
Type=Directory" | sudo tee $fileDirectory 
fi

pathMenu=/etc/xdg/menus/cinnamon-applications.menu 

# se não existir o menu, cria
existeMenu=$(grep -r "$menuName" $pathMenu)

if [ -z "$existeMenu" ]; then
    sudo sed -i '/<Merge type="menus"\/>/a <Menuname>'"$menuName"'<\/Menuname>' $pathMenu
    sudo sed -i '/<\/Layout>/a <Menu> \n <Name>'"$menuName"'<\/Name> \n <Directory>'$menuFile'<\/Directory> \n <Include> \n <And> \n <Category>'$category'<\/Category> \n <\/And> \n <\/Include> \n <\/Menu>' $pathMenu
fi