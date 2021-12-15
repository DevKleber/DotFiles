#!/bin/bash

# Tema Spaceship

#Vamos começar clonando o repositório do Spaceship em nossa pasta de themes do Oh My Zsh (é necessário ter instalado o Git pra isso):
sudo git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

#Agora vamos criar um link simbólico para o arquivo do tema do Spaceship na pasta dos temas do Oh My Zsh:
sudo ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
