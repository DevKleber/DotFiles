#!/bin/bash
DIR_VS_EXT="/home/${USER}/.vscode"
FOLDER_VS_EXT="extensions"
FOLDER_VS_ORIGINAL="extensions_original"
PATH_VS_EXT="$DIR_VS_EXT/$FOLDER_VS_EXT"
PATH_VS_EXT_ORIGINAL="$DIR_VS_EXT/$FOLDER_VS_ORIGINAL"

if [ -d "$PATH_VS_EXT_ORIGINAL" ]
then 
    echo "${PATH_VS_EXT_ORIGINAL} ja existe"
else 
    if [ -d "$PATH_VS_EXT" ]
    then 
        echo "${PATH_VS_EXT} ja existe"
        sudo mv $PATH_VS_EXT "$DIR_VS_EXT/$FOLDER_VS_ORIGINAL"
        cd $DIR_VS_EXT && git clone git@github.com:DevKleber/pc-vscode-extensions.git $FOLDER_VS_EXT
    else 
        cd $DIR_VS_EXT && git clone git@github.com:DevKleber/pc-vscode-extensions.git $FOLDER_VS_EXT
    fi
fi