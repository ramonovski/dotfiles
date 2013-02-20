# ------------------------------------------------------
# file:     $HOME/.xinitrc
# author:   Ramon Solis - http://cyb3rpunk.wordpress.com
# modified: Dec 2012
# vim:fenc=utf-8:nu:ai:si:et:ts=4:sw=4:ft=sh:
# ------------------------------------------------------

# Keyboard layout
#setxkbmap -layout us -variant altgr-intl
setxkbmap us -variant colemak

# Hide mouse after some idle time
#unclutter -idle 5 -noevents &

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
xmodmap $HOME/.xmodmaprc

# wm
exec i3 
