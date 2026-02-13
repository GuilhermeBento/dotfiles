#!/bin/bash

# i3 window manager and companion tools
# Run separately from install.sh -- this is opt-in.

sudo apt-get update

sudo apt-get install -y \
	i3 \
	rofi \
	dunst \
	i3lock \
	maim \
	feh \
	udiskie \
	pavucontrol \
	arandr

echo "i3 and companion tools installed."
echo "Log out and select 'i3' from the session menu to start using it."
