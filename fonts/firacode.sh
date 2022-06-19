#!/bin/bash

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
