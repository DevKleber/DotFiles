#!/bin/bash

sudo apt install gnome-software-plugin-flatpak

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.gnome.meld
flatpak run org.gnome.meld

flatpak install flathub org.gnome.meld
flatpak run org.gnome.meld
