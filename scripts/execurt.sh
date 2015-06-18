#!/bin/bash

#exec freqcpu.sh performance &
#wait

setxkbmap us -variant colemak
xmodmap $HOME/.xmodmaprc

URTDIR="$HOME/Juegos/UrbanTerror"
cd "${URTDIR}"
nohup  ./ioq3-urt &> /dev/null &
