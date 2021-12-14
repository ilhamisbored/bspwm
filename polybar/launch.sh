#!/bin/bash

killall -q polybar
echo "..." | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar example >> /tmp/polybar1.log 2>&1 &

echo "Polybar is up and running!"

bspc config normal_border_color "#BF616A"
bspc config focused_border_color "#81A1C1"
