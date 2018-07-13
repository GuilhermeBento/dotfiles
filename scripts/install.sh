#!/bin/bash

sudo apt-get update

sudo apt-get install -y python3
sudo apt-get install -y git subversion curl

# Vim stuff
sudo apt-get -y install build-essential cmake
sudo apt-get -y install python-dev python3-dev
sudo apt-get install -y vim-gtk
sudo apt-get install -y tmux autojump
sudo apt-get install -y pavucontrol

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/.vim/installer.sh
sh ~/.vim/installer.sh dein
