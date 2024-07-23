#!/bin/sh

i3Check=$(pgrep -c i3lock)
if [[ $i3Check != 0 ]]; then
   echo $i3Check
else
   echo $i3Check
fi
