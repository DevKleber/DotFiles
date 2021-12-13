#!/bin/bash

VSCODE_URL ="https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"

wget -c "$VSCODE_URL" -P "$DIRETORIO_DOWNLOADS" -O vscode.deb