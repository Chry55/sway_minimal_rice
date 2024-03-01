entries="Esci\nSospendi\nRiavvia\nSpegni"

selected=$(printf $entries|wofi --width 250 --height 200 --dmenu --cache-file /dev/null)

case $selected in
  Esci)
    swaymsg exit;;
  Sospendi)
    exec systemctl suspend;;
  Riavvia)
    exec systemctl reboot;;
  Spegni)
    exec systemctl poweroff -i;;
esac
