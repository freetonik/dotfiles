#!/bin/bash

ln -s ./.bash_profile .bash_profile
ln -s ./.bash_theme ~/.bash_theme
ln -s ./.bashrc ~/.bashrc
ln -s ./.load-castlemacs.sh ~/.load-castlemacs.sh
ln -s ./.unload-castlemacs.sh ~/.unload-castlemacs.sh

# this path will change in Catalina
ln -s ~/Library/Mobile\ Documents/com~apple~CloudDocs/ ~/icloud

ln -s ~/icloud/.os/.ssh .ssh
ln -s ~/icloud/.os/.config .config
