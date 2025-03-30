#!/bin/bash

echo "Instalando Zsh"
sudo apt update
sudo apt install zsh -y


echo "Versão do Zsh"
zsh --version


echo "Tornar Zsh o shell padrão"
chsh -s $(which zsh)

echo $SHELL
