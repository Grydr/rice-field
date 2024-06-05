#!/bin/sh
xidlehook \
	--not-when-audio \
	--not-when-fullscreen \
	--detect-sleep \
	--timer 900 \
	'loginctl suspend-then-hibernate' \
	''
