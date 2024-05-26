notify-send \
      --hint=string:x-dunst-stack-tag:wallpaper \
      --hint=string:synchronous:wallpaper \
      " $(awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Capture))"
