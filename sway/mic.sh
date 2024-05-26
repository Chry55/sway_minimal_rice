lev=$(awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Capture) | sed 's/%//g')
notify-send \
      --hint=string:x-dunst-stack-tag:wallpaper \
      --hint=string:synchronous:wallpaper \
	  --hint=int:value:$lev \
      " $(awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Capture))"
