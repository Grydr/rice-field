#!/bin/sh

scrot -u -F "/home/gryd/Pictures/Screenshots/%F_%R.png"
notify-send --app-name=Scrot --icon=flameshot 'Screenshot taken'
