#!/bin/sh

# ------------------------------------------------------
# file:     $HOME/.scripts/dzenstat.sh
# author:   Ramon Solis - http://cyb3rpunk.wordpress.com
# modified: June 2011
# vim:fenc=utf-8:nu:ai:si:et:ts=4:sw=4:ft=sh:
# ------------------------------------------------------

# -------------------------
# Dzen settings & Variables
# -------------------------
ICONPATH="$HOME/.icons/dzenicons"
COLOR_ICON="#6e9bcf"
CRIT_COLOR="#ff2c4a"
DZEN_FG="#333333"
DZEN_BG="#fbfbfb"
HEIGHT=12
WIDTH=470
RESOLUTIONW=`xrandr | grep -r "current" | awk '{print $8}'` 
RESOLUTIONH=`xrandr | grep -r "current" | awk '{print $10}' | tr -d ','`
X=$(($RESOLUTIONW-$WIDTH))
Y=1
BAR_FG="#333333"
BAR_BG="#808080"
BAR_H=10
BAR_W=60
#FONT="-artwiz-anorexia-medium-r-normal--11-110-75-75-p-90-iso8859-1"
FONT="-*-screen-medium-*-*-*-12-*-*-*-*-*-*-*"
SLEEP=1
VUP="amixer -c0 -q set Master 4dB+"
VDOWN="amixer -c0 -q set Master 4dB-"
EVENT="button3=exit;button4=exec:$VUP;button5=exec:$VDOWN"
DZEN="dzen2 -x $X -y $Y -w $WIDTH -h $HEIGHT -fn $FONT -ta 'c' -bg $DZEN_BG -fg $DZEN_FG -e "button3=exit;button4=exec:$VUP;button5=exec:$VDOWN""

# -------------
# Infinite loop
# -------------
while :; do
sleep ${SLEEP}

# ---------
# Functions
# ---------
Vol ()
{
	VOL=$(amixer get Master | awk '/Front\ Left:/ {print $5}' | tr -d '[]%')
		   echo -n "^fg($COLOR_ICON)^i($ICONPATH/spkr_01.xbm)^fg()" ${VOL} 
    return
}

Mem ()
{
	MEM=$(free -m | grep '-' | awk '{print $3}')
	echo -n "^fg($COLOR_ICON)^i($ICONPATH/mem.xbm)^fg() ${MEM} M"
	return
}

Temp ()
{
	TEMP=$(acpi -t | awk '{print $4}' | tr -d '.0')
			echo -n "^fg($COLOR_ICON)^i($ICONPATH/temp.xbm)^fg() ${TEMP}°C"
	return
}

Batt ()
{
	BATT="$(acpi -b | awk '{print $4}' | tr -d ',')"
	echo -n "^fg($COLOR_ICON)^i($ICONPATH/bat_full_01.xbm)^fg() ${BATT}"
	return
}

Disk ()
{
	SDA2=$(df -h / | awk '/\/$/ {print $5}' | tr -d '%')
	SDA4=$(df -h /home | awk '/home/ {print $5}' | tr -d '%')
		echo -n "^fg($COLOR_ICON)^i($ICONPATH/fs_01.xbm)^fg() /:${SDA2}%"
		echo -n "  ~:${SDA4}% "
	return
}

Date ()
{
	TIME=$(date +%R)
		echo -n "^fg($COLOR_ICON)^i($ICONPATH/clock.xbm)^fg(#000000) ${TIME}"
	return
}

Between ()
{
    echo -n " ^fg(#7298a9)^r(2x2)^fg() "
	return
}

OSLogo ()
{
	OS=$(uname -a | awk '{print $2}')
	echo -n " ^fg($COLOR_ICON)^i($ICONPATH/${OS}.xbm)^fg()"
	return
}
# --------- End Of Functions

# -----
# Print 
# -----
Print () {
		OSLogo
        Between
		Temp
        Between
		Batt
		Between
        Mem
        Between
        Disk
        Between
        Vol
        Between
        Date
        echo
    return
}

echo "$(Print)" 
done | $DZEN &
