#!/bin/bash -x

path=$(dirname $(realpath $0))

for trackpoint in "TPPS/2 IBM TrackPoint" 12 13 14; do
    xinput set-prop "$trackpoint" "Device Accel Profile" 3
    xinput set-prop "$trackpoint" "Device Accel Velocity Scaling" 30
    xinput set-prop "$trackpoint" "Evdev Wheel Emulation" 1
    xinput set-prop "$trackpoint" "Evdev Wheel Emulation Button" 2
    xinput set-prop "$trackpoint" "Evdev Wheel Emulation Timeout" 200
    xinput set-prop "$trackpoint" "Evdev Wheel Emulation Axes" 6 7 4 5
done

xinput set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 0

#setxkbmap -layout "us(cz_sk_de),cz(qwerty)"
setxkbmap -layout "us(cz_sk_de)" -option ""
#setxkbmap -option grp:lalt_lshift_toggle
#setxkbmap -option compose:rctrl
#setxkbmap -option lv3:ralt_switch_multikey
xmodmap $path/xmodmap.conf
xrdb $path/xresources

redshift -l 50:15 &
