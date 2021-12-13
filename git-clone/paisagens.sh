#!/bin/bash
DIR_PAISAGEM="/home/${USER}/Pictures"
FOLDER_PAISAGEM="wallpapers"
PATH_PAISAGEM="$DIR_PAISAGEM/$FOLDER_PAISAGEM"



if [ -d "$PATH_PAISAGEM" ]
then 
    echo "${PATH_PAISAGEM} ja existe"
else 
    mkdir -p $PATH_PAISAGEM
    cd $PATH_PAISAGEM && git clone git@github.com:DevKleber/wallpapers.git
fi
