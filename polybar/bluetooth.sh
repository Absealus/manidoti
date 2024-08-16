#!/bin/sh
if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]
  then 
    echo "󰂯"
  else
    echo "%{F#d8dee9}󰂯"
fi

