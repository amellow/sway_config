#!/bin/bash

entries="Performance Balanced PowerSaving"

selected=$(printf '%s\n' $entries | wofi --conf=$HOME/.config/wofi/power_profile/config.powerprofile --style=$HOME/.config/wofi/power_profile/style.widgets.css | awk '{print tolower($1)}')

case $selected in
  performance)
    exec powerprofilesctl set performance;;
  balanced)
    exec powerprofilesctl set balanced;;
  powersaving)
    exec powerprofilesctl set power-saver;;
esac

