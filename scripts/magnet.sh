#!/usr/bin/env bash
cd ~/Video || exit    # set your watch directory here
[[ "$1" =~ xt=urn:btih:([^&/]+) ]] || exit
echo "d10:magnet-uri${#1}:${1}e" > "meta-${BASH_REMATCH[1]}.torrent"
#xmessage -nearmouse 'torrent added to rtorrent'
