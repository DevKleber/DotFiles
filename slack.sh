#!/bin/bash

#pegando a ultima versão do slack
content=`wget -O - https://slack.com/intl/pt-br/downloads/linux`
versiontext=$(echo "$content" | grep -o -P '(?<=page-downloads__hero__meta-text__version">).*(?=</span><strong>)')
version=$(echo $versiontext | sed 's/[^0-9 .]//g' | sed 's/^ *//g')

SLACK_URL="https://downloads.slack-edge.com/releases/linux/$version/prod/x64/slack-desktop-$version-amd64.deb"

wget -c "$SLACK_URL" --output-document="$DIRETORIO_DOWNLOADS/slack.deb"