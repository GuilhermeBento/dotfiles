#!/bin/bash

# Monitor layout: ultrawide (HDMI-1-0) above laptop (eDP-1)
# Ultrawide is primary. Run this script to reset the layout.

xrandr \
	--output HDMI-1-0 --mode 3440x1440 --pos 0x0 --primary \
	--output eDP-1 --mode 2560x1600 --below HDMI-1-0
