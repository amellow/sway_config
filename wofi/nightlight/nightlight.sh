#!/bin/bash

entries="Deep Light Off"

selected=$(printf '%s\n' $entries | wofi --conf=$HOME/.config/wofi/nightlight/config.nightlight --style=$HOME/.config/wofi/nightlight/style.widgets.css | awk '{print tolower($1)}')

case $selected in
  deep)
    exec ~/.config/wofi/nightlight/scripts/deep.sh;;
  light)
    exec ~/.config/wofi/nightlight/scripts/light.sh;;
  off)
    exec ~/.config/wofi/nightlight/scripts/off.sh;;
esac

