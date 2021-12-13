#!/bin/bash

DIR_ATALHOS="/home/${USER}/atalhos"

if [ -d "$DIR_ATALHOS" ]
then 
    echo "${DIR_ATALHOS} ja existe"
else 
    echo 'else'
    cd ~ && git clone git@github.com:DevKleber/atalhos.git
fi

