#!/bin/bash

## spotify ## 
echo "downloading Spotify "
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

comando="spotify-client"

sudo apt-get update

if ! dpkg -l | grep -q $comando; then # Only install if not already installed
    sudo apt-get install "$comando" -y
  else
    echo "[INSTALADO] - $comando"
fi
