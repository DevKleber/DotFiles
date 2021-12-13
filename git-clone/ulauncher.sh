#!/bin/bash
DIR_ULAUNCHER="/home/${USER}/.config"
FOLDER_ULAUNCHER="ulauncher"
PATH_ULAUNCHER="$DIR_ULAUNCHER/$FOLDER_ULAUNCHER"


if [ -d "$PATH_ULAUNCHER" ]
then 
    echo "${PATH_ULAUNCHER} ja existe"
else 
    cd "$DIR_ULAUNCHER" && git clone git@github.com:DevKleber/pc-config-ulauncher-.git ulauncher
fi