#!/bin/bash
entries="Esci\nSospendi\nRiavvia\nSpegni"

selected=$(echo -e $entries|wofi --width 300 --height 200 --dmenu --cache-file /dev/null | awk '{print tolower($2)}')

case $selected in
  logout)
    swaymsg exit;;
  suspend)
    exec systemctl suspend;;
  reboot)
    exec systemctl reboot;;
  shutdown)
    exec systemctl poweroff -i;;
esac
