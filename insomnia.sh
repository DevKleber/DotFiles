#!/bin/bash

INSOMNIA_URL="https://updates.insomnia.rest/downloads/ubuntu/latest?&app=com.insomnia.app&source=website"

wget -c "$INSOMNIA_URL" --output-document="$DIRETORIO_DOWNLOADS/insomnia.deb"