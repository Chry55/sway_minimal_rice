monitor="$(swaymsg -t get_outputs | jq '[.[].focused] | index(true)')"
echo XWAYLAND$monitor
