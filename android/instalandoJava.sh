#!/bin/bash

echo "Instalando JAVA 🤮"
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install openjdk-11-jdk

java -version