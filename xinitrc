# ------------------------------------------------------
# file:     $HOME/.xinitrc
# author:   Ramon Solis www.ramonsolis.net
# modified: Nov 2017
# vim:fenc=utf-8:nu:ai:si:et:ts=4:sw=4:ft=sh:
# ------------------------------------------------------

# Keyboard layout
setxkbmap us -variant colemak

# Hide mouse after some idle time
#unclutter -idle 5 -noevents &

# Load fonts
#xset +fp /usr/share/fonts/artwiz-latin1
#xset +fp ~/.fonts

# Screensaver time
xset s 240

# Disable beep
xset -b

# Xresources
xrdb -load $HOME/.Xresources

# urxvt daemon
/usr/bin/urxvtd -q -o -f &

# Wallpaper
sh $HOME/.fehbg &

# Displays
xrandr --output HDMI-1 --mode 1920x1080 --left-of VGA-1 --mode 1920x1080

# Xmodmap
/usr/bin/xmodmap $HOME/.xmodmaprc

# MPD
sh $HOME/.config/scripts/startmpd.sh &

# wm
exec /usr/bin/i3 
