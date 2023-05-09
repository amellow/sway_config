#!/bin/bash

entries="Enable Disable"

selected=$(printf '%s\n' $entries | wofi --conf=$HOME/.config/wofi/bluetooth/config.bluetooth --style=$HOME/.config/wofi/bluetooth/style.widgets.css | awk '{print tolower($1)}')

case $selected in
  enable)
    exec systemctl enable bluetooth;;
  disable)
    exec systemctl disable bluetooth;;
esac

