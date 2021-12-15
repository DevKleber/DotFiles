#!/bin/bash

#Plugins do ZSH

#Para instalar plugins precisamos configurar o ZInit, ferramenta que facilita a instalação e remoção de plugins no Zsh.
sh -c "$(curl -fsSL https://git.io/zinit-install)"

temaAtivo=$(grep -o -P '(?=ZSH_THEME=").*(?=)' ~/.zshrc)
sed "s/$temaAtivo/ZSH_THEME=\"spaceship\"/g" ~/.zshrc

echo "zinit light zdharma-continuum/fast-syntax-highlighting" >> ~/.zshrc
echo "zinit light zsh-users/zsh-autosuggestions" >> ~/.zshrc
echo "zinit light zsh-users/zsh-completions" >> ~/.zshrc
echo "zinit light zsh-users/zsh-history-substring-search" >> ~/.zshrc
