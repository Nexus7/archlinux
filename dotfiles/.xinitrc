#!/bin/bash -x
sudo tee /sys/class/backlight/intel_backlight/brightness <<< 937
#xbindkeys
~/bin/dwm_status &
xscreensaver &
nitrogen --set-auto './img/hokusai.jpg'
xcompmgr &
exec /home/rick/archlinux/suckless/dwm/dwm 2> ~/tmp/dwm.log
