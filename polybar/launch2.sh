#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config
polybar th1nhhdk 2>&1 | tee -a /tmp/polybar.log & disown

polybar th1nhhdk2 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
