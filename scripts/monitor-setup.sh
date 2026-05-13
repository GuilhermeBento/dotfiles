#!/bin/bash

# Monitor layout: laptop (eDP-1) left, ultrawide (HDMI-1-0) right
# Ultrawide is primary. Run this script to reset the layout.

xrandr --output HDMI-1-0 --off
sleep 1
xrandr \
	--output HDMI-1-0 --mode 3440x1440 --rate 85 --primary --right-of eDP-1 \
	--output eDP-1 --mode 2560x1600 --rate 240
