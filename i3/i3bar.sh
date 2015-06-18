#!/usr/bin/env bash

i3status | while : 
	do
		TEMP="$(acpi -t | awk '{print $4}')"

		BATT=$(acpi -b | awk '{print $4}' | tr -d ',') 
		[[ -z "${BATT}" ]] && BATT="AC"
		
		read line
		lol="$(echo -n "$TEMP °C")"
		# | $(funcBatt)")"
		echo "$lol | $line" || exit 1
	done
