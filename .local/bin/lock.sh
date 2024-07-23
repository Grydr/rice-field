#!/bin/sh
# /lib/elogind/system-sleep/lock.sh
# Lock before suspend integration with elogind

username=gryd
userhome=/home/$username
export XAUTHORITY="$userhome/.Xauthority"
export DISPLAY=":0.0"
case "${1}" in
pre)
   i3Check=$(pgrep -c i3lock)
   if [[ $i3Check != 0 ]]; then
      pkill i3lock
   fi
   su $username -c "i3lock-fancy" &
   sleep 2s
   ;;
esac
