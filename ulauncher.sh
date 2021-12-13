#!/bin/bash

sudo add-apt-repository ppa:agornostal/ulauncher && sudo apt update && sudo apt install ulauncher
sudo apt install ./ulauncher_x.y.z_all.deb

#adicionando tema do dracula. 
git clone https://github.com/dracula/ulauncher.git ~/.config/ulauncher/user-themes/dracula-ulauncher
