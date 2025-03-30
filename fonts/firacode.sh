#!/bin/bash

echo "Instalando fira code nerd fonts"
# Pasta onde as fontes do usuário ficam
FONT_DIR="$HOME/.local/share/fonts"

echo "🔤 Instalando FiraCode Nerd Font..."

# Criar pasta se não existir
mkdir -p "$FONT_DIR"
cd "$FONT_DIR" || exit

# Baixar o zip da fonte
wget -O FiraCode.zip https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip

# Descompactar
unzip -o FiraCode.zip
rm FiraCode.zip

# Atualizar o cache de fontes
fc-cache -fv

echo "✅ FiraCode Nerd Font instalada com sucesso!"
echo "👉 Agora vá nas configurações do terminal e selecione: 'FiraCode Nerd Font'"



echo "Instalando fira code"

content=`wget -O - https://github.com/tonsky/FiraCode/releases/latest`
ohMyZshVersiontext=$(echo "$content" | grep -o -P '(?<=/).*(?=.zip)')
ohMyZshVersionArray=(${ohMyZshVersiontext// / })
nameVersionOhMyZsh=(${ohMyZshVersionArray//"/"/ })
arVersionOhMyZshLength="${#nameVersionOhMyZsh[@]}"

ohMyZshLastVersionName=${nameVersionOhMyZsh[$arVersionOhMyZshLength-1]}

path="$pwd/fonts/files"

if [ ! -d "/usr/share/fonts/$ohMyZshLastVersionName" ]; then
    wget -c "https://github.com/$ohMyZshVersionArray.zip" --output-document="$path/$ohMyZshLastVersionName.zip"

    unzip $path/$ohMyZshLastVersionName.zip -d $path/$ohMyZshLastVersionName

    sudo mv $path/$ohMyZshLastVersionName /usr/share/fonts

    echo "Removendo fonte"
    sleep 1
    rm $path/$ohMyZshLastVersionName.zip
    rm -r $path/$ohMyZshLastVersionName
fi
