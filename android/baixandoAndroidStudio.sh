#!/bin/bash

#pegando a ultima versão do android
contentAndroid=`wget -O - https://developer.android.com/studio/`

nomeDownloadAdroidStudio=$(echo "$contentAndroid" | grep -o -P '(?<=http).*(?=linux.tar.gz)')
versionAndroidStudioArray=(${nomeDownloadAdroidStudio// / })
versionAndroidStudio=$(echo $nomeDownloadAdroidStudio | sed 's/[^0-9 .]//g' | sed 's/^ *//g')


urlAndroidStudioDownload="http${versionAndroidStudioArray}linux.tar.gz"
echo $urlAndroidStudioDownload

wget -c "$urlAndroidStudioDownload" --output-document="$pwd/android-studio-linux.tar.gz"

tar -vzxf android-studio-linux.tar.gz

mv $pwd/android-studio ~/

rm $pwd/android-studio-linux.tar.gz
exportPATH=$PATH:~/android-studio/bin

mkdir ~/Android/Sdk