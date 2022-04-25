#!/bin/bash

#Bug no ubuntu 
# Ativando teclado de atalho
# https://github.com/Ulauncher/Ulauncher/wiki/Hotkey-In-Wayland

#Ativando focus 
# Install package wmctrl (needed to activate app focus)
# sudo apt install wmctrl

sudo add-apt-repository ppa:agornostal/ulauncher && sudo apt update && sudo apt install ulauncher

#adicionando tema do dracula. 
git clone https://github.com/dracula/ulauncher.git ~/.config/ulauncher/user-themes/dracula-ulauncher
