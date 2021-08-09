#!/bin/sh

xrdb ~/.Xresources

# Export variables
export XDG_SESSION_TYPE=x11
export DESKTOP_SESSION=x11
export QT_QPA_PLATFORMTHEME=gtk3

# Xinput
## Elecom Huge
id=$(xinput list | grep "ELECOM TrackBall Mouse HUGE TrackBall" | perl -n -e'/id=(\d+)/ && print "$1\n"' | head -n 1)
xinput set-button-map $id 1 2 2 4 5 6 7 9 8 10 11 3
xinput --set-prop $id 'libinput Scroll Method Enabled' 0 0 1
xinput --set-prop $id 'libinput Button Scrolling Button' 3
## Kensington Orbit
id=$(xinput list | grep "Kensington      Kensington USB/PS2 Orbit" | perl -n -e'/id=(\d+)/ && print "$1\n"' | head -n 1)
xinput --set-prop $id 'libinput Scroll Method Enabled' 0 0 1
xinput --set-prop $id 'libinput Button Scrolling Button' 3
xinput --set-prop $id 'libinput Accel Speed' 0.8
xinput --set-prop $id 'libinput Horizontal Scroll Enabled' 1
# Touchpad
id=$(xinput list | grep "Synaptics TM2927-001" | perl -n -e'/id=(\d+)/ && print "$1\n"' | head -n 1)
xinput --set-prop $id 'Synaptics Tap Action' 0 0 0 0 1 3 2
xinput --set-prop $id 'Synaptics Tap Time' 240
xinput --set-prop $id 'Synaptics Two-Finger Scrolling' 1 1

exec i3
