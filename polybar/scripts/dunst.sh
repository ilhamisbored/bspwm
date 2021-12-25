#!/bin/bash

if [[ $(dunstctl is-paused) == "true" ]]
then
  polybar-msg hook dunst-toggle 1
  dunstctl set-paused false
else
  polybar-msg hook dunst-toggle 2
  dunstctl set-paused true
fi
