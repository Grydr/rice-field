#!/bin/bash

i3Check=$(pgrep -c i3lock)
if [[ $i3Check != 0 ]]; then
   echo "i3lock exist"
   echo $i3Check
   echo "Killing i3lock"
   pkill i3lock
else
   echo "i3lock not exist"
   echo $i3Check
   echo "doing nothing"
fi
