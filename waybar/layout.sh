#!/bin/bash

# Get active layout from hyprctl
layout=$(hyprctl devices -j | jq -r '.keyboards[] | select(.name != null) | .active_keymap' | head -n1)

# Map us → EN, ru → RU
case $layout in
  us) echo "EN" ;;
  ru) echo "RU" ;;
  *) echo "$layout" ;;
esac
