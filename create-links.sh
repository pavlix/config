#!/bin/sh

link() {
    ln -s `realpath $1` ~/$2
}

link i3 .i3
link xorg/xinitrc .xinitrc
link xorg/xcompose.conf .Xcompose
link xorg/autostart.sh bin/autostart
