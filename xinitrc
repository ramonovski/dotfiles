# ------------------------------------------------------
# file:     $HOME/.xinitrc
# author:   ramonovski
# modified: Jul 2014
# vim:fenc=utf-8:nu:ai:si:et:ts=4:sw=4:ft=sh:
# ------------------------------------------------------

# Keyboard layout
setxkbmap us -variant colemak

# Hide mouse after some idle time
unclutter -idle 5 -noevents &

# Load fonts
#xset +fp /usr/share/fonts/artwiz-latin1
#xset +fp ~/.fonts

# MPD
sh $HOME/.scripts/startmpd.sh &

# urxvt daemon
/usr/bin/urxvtd -q -o -f &

# Wallpaper
sh $HOME/.fehbg &

# Xmodmap
/usr/bin/xmodmap $HOME/.xmodmaprc

# wm
exec /usr/bin/i3 
