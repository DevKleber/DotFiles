#!/bin/bash
DIR_INSOMNIA="/home/${USER}/.config"
FOLDER_INSOMNIA="Insomnia"
PATH_INSOMNIA="$DIR_INSOMNIA/$FOLDER_INSOMNIA"


if [ -d "$PATH_INSOMNIA" ]
then 
    echo "${PATH_INSOMNIA} ja existe"
else 
    cd $DIR_INSOMNIA && git clone git@github.com:DevKleber/pc-home-kleber-.config-Insomnia.git Insomnia
fi
