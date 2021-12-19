#!/bin/bash

sudo touch ~/.local/share/desktop-directories/cinnamon-testes.directory

# echo "[Desktop Entry] 
# Name=Testes 
# Comment=Testes applications 
# Icon=star 
# Type=Directory" | sudo tee ~/.local/share/desktop-directories/cinnamon-testes.directory

sudo sed -i '0,/</Menu>$/s//*************************************/' /etc/xdg/menus/cinnamon-applications.menu

# sudo sed -i '0,// fuck' /etc/xdg/menus/cinnamon-applications.menu
# <Menu> <Name>Testes</Name> <Directory>cinnamon-testes.directory</Directory> </Menu>' /etc/xdg/menus/cinnamon-applications.menu

# falta essa parte funcionar
# sudo sed -i '0,/<Menuname>/i <Menuname>Testes</Menuname>' /etc/xdg/menus/cinnamon-applications.menu

# sudo touch /usr/share/applications/Testes.desktop

# echo "[Desktop Entry]
# Name=php71
# Exec=/home/kleber/atalhos/php/php7.1.sh
# Comment=
# Terminal=true
# Icon=/home/kleber/.icons/download/php.png
# Type=Application
# Categories=Atalhos;"| sudo tee /usr/share/applications/Testes.desktop