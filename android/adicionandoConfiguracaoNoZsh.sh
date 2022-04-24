#!/bin/bash

echo "export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64" >> ~/.zshrc
echo "export ANDROID_HOME=~/Android/Sdk" >> ~/.zshrc
echo "export PATH=$PATH:$ANDROID_HOME/emulator" >> ~/.zshrc
echo "export PATH=$PATH:$ANDROID_HOME/tools" >> ~/.zshrc
echo "export PATH=$PATH:$ANDROID_HOME/tools/bin" >> ~/.zshrc
echo "export PATH=$PATH:$ANDROID_HOME/platform-tools" >> ~/.zshrc