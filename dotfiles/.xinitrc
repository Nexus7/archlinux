#!/bin/bash -x
sudo tee /sys/class/backlight/intel_backlight/brightness <<< 937
#exec xbindkeys -p
google-chrome-stable --force-device-scale-factor=1 &
~/bin/dwm_status &
exec /home/rick/bin/dwm 2> ~/tmp/dwm.log
