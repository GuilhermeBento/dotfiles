#!/usr/bin/bash
HEADPHONE='04:52:C7:5D:0D:89'
bluetoothctl trust $HEADPHONE
bluetoothctl disconnect $HEADPHONE
bluetoothctl connect $HEADPHONE
