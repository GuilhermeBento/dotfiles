#!/usr/bin/bash
HEADPHONE='24:29:34:B1:1E:A3'
bluetoothctl trust $HEADPHONE
bluetoothctl disconnect $HEADPHONE
bluetoothctl connect $HEADPHONE

sleep 2 # wait for the headset to fully connect
sudo -u '#1000' XDG_RUNTIME_DIR=/run/user/1000 \
    pactl set-card-profile bluez_card.24_29_34_B1_1E_A3 headset-head-unit
logger "Switched to Google headset to HFP profile"
