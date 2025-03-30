#!/bin/ ZSH

#Para instalar plugins precisamos configurar o ZInit, ferramenta que facilita a instalação e remoção de plugins no Zsh.
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
#
#temaAtivo=$(grep -o -P '(?=ZSH_THEME=").*(?=)' ~/.zshrc)
#sed "s/$temaAtivo/ZSH_THEME=\"spaceship\"/g" ~/.zshrc
#
#echo "zinit light zdharma-continuum/fast-syntax-highlighting" >> ~/.zshrc
#echo "zinit light zsh-users/zsh-autosuggestions" >> ~/.zshrc
#echo "zinit light zsh-users/zsh-completions" >> ~/.zshrc
#echo "zinit light zsh-users/zsh-history-substring-search" >> ~/.zshrc


#plugins sem zinit

echo "🎯 2. Instalar Plugins úteis"
echo "Esses aqui são os mais usados no Zsh:"
echo ""
echo "➤ zsh-autosuggestions"
echo "Sugere comandos enquanto você digita:"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


echo "➤ zsh-syntax-highlighting"
echo "Destaca comandos válidos e inválidos:"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


echo "➤ (Opcional) z"
echo "Pra navegar rápido em pastas que você já visitou:"
git clone https://github.com/rupa/z ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/z

