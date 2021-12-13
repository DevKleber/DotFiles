#!/bin/bash

DIR_SITESAVAILABLE="/etc/apache2/"
FOLDER_SITESAVAILABLE="sites-available"
PATH_SITESAVAILABLE="$DIR_SITESAVAILABLE/$FOLDER_SITESAVAILABLE"


if [ -d "$PATH_SITESAVAILABLE" ]
then 
    echo "${PATH_SITESAVAILABLE} ja existe"
else 
    mkdir -p $DIR_SITESAVAILABLE
    cd /etc/apache2/ && sudo git clone git@github.com:DevKleber/pc-sites-available.git sites-available
fi