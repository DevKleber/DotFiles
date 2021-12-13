#!/bin/bash
DIR_VSUSER="/home/${USER}/.config/Code"
FOLDER_VSUSER="User"
PATH_VSUSER="$DIR_VSUSER/$FOLDER_VSUSER"


if [ -d "$PATH_VSUSER" ]
then 
    echo "${PATH_VSUSER} ja existe"
else 
    mkdir -p $DIR_VSUSER
    cd $DIR_VSUSER && git clone git@github.com:DevKleber/pc-vscode-conf.git User
fi