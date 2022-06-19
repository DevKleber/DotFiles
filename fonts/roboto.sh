#!/bin/bash

echo "Instalando Roboto"

path="$pwd/fonts/files"
name_folder="Roboto"
folder_zip="$name_folder.zip"

if [ ! -d "/usr/share/fonts/$name_folder" ]; then
    wget -c "https://fonts.google.com/download?family=Roboto" --output-document="$path/$folder_zip"

    unzip $path/$folder_zip -d $path/$name_folder

    sudo mv $path/$name_folder /usr/share/fonts

    echo "Removendo fonte"
    sleep 3
    rm $path/$folder_zip
    rm -r $path/$name_folder
fi