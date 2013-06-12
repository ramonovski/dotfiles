# ------------------------------------------------------
# file:     $HOME/.xinitrc
# author:   ramonovski 
# modified: Apr 2013
# vim:fenc=utf-8:nu:ai:si:et:ts=4:sw=4:ft=sh:
# ------------------------------------------------------

# Keyboard layout
setxkbmap us -variant colemak

# Hide mouse after some idle time
/usr/bin/unclutter -idle 5 -noevents &

# Load fonts
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
exec /usr/bin/i3 -V -d all > $HOME/.i3/i3log-$(date +'%F-%k-%M-%S') 2>&1
