#!/bin/bash
DIR_GIT="/home/${USER}/shellscripts"
FOLDER_GIT="git"
PATH_GIT=$DIR_GIT/$FOLDER_GIT

if [ -d "$DIR_GIT" ]
then 
    echo "${DIR_GIT} ja existe"
else 
    mkdir -p $DIR_GIT
fi

if [ -d "$PATH_GIT" ]
then 
    echo "${PATH_GIT} ja existe"
else 
    cd ~/shellscripts && git clone git@github.com:DevKleber/git.git
fi
