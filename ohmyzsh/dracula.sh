#!/bin/bash

echo "Utilizando Dracula"

sudo apt-get install dconf-cli

git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal

echo "Fique atento, nesse passo terá muitas perguntas"
sleep 5

./install.sh

cd $pwd