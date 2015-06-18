#!/bin/bash

for i in *.m4a; do
	echo "Converting: ${i%.m4a}.mp3"
	#faad -o - "$i" | lame --cbr - "${i%.m4a}.mp3"
	faad -o - "$i" | lame --vbr-new -V 0 - "${i%.m4a}.mp3"
done
