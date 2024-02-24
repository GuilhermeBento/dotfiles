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
sudo apt-get install silversearcher-ag
sudo apt-get install -y keychain
sudo apt-get install xclip scrot
sudo apt-get install git
sudo apt-get install -y python3-dev
sudo apt-get install tcl-dev
sudo apt-get install ruby-dev
sudo apt-get install py3status
sudo apt-get install -y openvpn
sudo apt-get install -y rofi
sudo apt-get install -y i3

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/.vim/installer.sh
sh ~/.vim/installer.sh dein

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
