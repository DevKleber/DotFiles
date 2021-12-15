#!/bin/bash

echo "Instalando FiraCode"

# Acessando o bitbucket para baixar a ultima versão do FiraCode

content=`wget -O - https://github.com/tonsky/FiraCode/releases/latest`
ohMyZshVersiontext=$(echo "$content" | grep -o -P '(?<=/).*(?=.zip)')
ohMyZshVersionArray=(${ohMyZshVersiontext// / })
nameVersionOhMyZsh=(${ohMyZshVersionArray//"/"/ })
arVersionOhMyZshLength="${#nameVersionOhMyZsh[@]}"

ohMyZshLastVersionName=${nameVersionOhMyZsh[$arVersionOhMyZshLength-1]}

wget -c "https://github.com/$ohMyZshVersionArray.zip" $ohMyZshLastVersionName.zip


unzip $ohMyZshLastVersionName.zip -d $ohMyZshLastVersionName

sudo mv $ohMyZshLastVersionName /usr/share/fonts

echo "Removendo fonte"
sleep 3
rm $ohMyZshLastVersionName.zip
rm -r $ohMyZshLastVersionName
