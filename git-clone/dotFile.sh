#!/bin/bash
DIR_DOTFILE="/home/${USER}/shellscripts"
FOLDER_DOTFILE="DotFiles"
PATH_DOTFILE=$DIR_DOTFILE/$FOLDER_DOTFILE

if [ -d "$DIR_DOTFILE" ]
then 
    echo "${DIR_DOTFILE} ja existe"
else 
    mdkir $DIR_DOTFILE
fi

if [ -d "$PATH_DOTFILE" ]
then 
    echo "${PATH_DOTFILE} ja existe"
else 
    cd ~/shellscripts && git clone git@git@github.com:DevKleber/DotFiles.git
fi
