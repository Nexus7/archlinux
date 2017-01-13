#!/bin/bash -x
sudo tee /sys/class/backlight/intel_backlight/brightness <<< 937
xbindkeys
~/bin/dwm_status &
exec /home/rick/archlinux/suckless/dwm/dwm 2> ~/tmp/dwm.log
