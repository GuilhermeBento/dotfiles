#!/bin/bash

# use xev for key codes
# Build Xmodmap after changes 
# Source it in .xinitrc to make it persistent across reboots

xmodmap -e "clear Lock"
xmodmap -e "keycode 62 = Escape"
xmodmap -e "keycode 66 = BackSpace"

xmodmap -pke > ../.Xmodmap

