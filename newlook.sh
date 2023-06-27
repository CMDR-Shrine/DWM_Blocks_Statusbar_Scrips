#!/bin/sh
wall=$(find ~/Images/Wallpapers/ -type f -iname "*.jpg" -o -name "*.png" | shuf -n 1)

# add this as background wallpaper
xwallpaper --zoom $wall

# generate color scheme
wal -c
wal -i $wall

xdotool key super+F5

