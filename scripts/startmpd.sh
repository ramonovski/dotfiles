#!/bin/sh

sleep 3s && mpd $HOME/.mpd/mpd.conf
sleep 3s && mpdscribble --conf $HOME/.mpdscribble.conf
