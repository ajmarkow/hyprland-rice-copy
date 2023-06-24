#!/bin/bash



source ~/.config/hypr/lib.sh



run_hook pre &

set_wallpaper ~/.config/hypr/wallpaper.jpg

~/.config/hypr/waybar/start
~/.config/hypr/swaync/start
~/.config/hypr/eww/start

nm-applet &
blueman-applet &

lxsession &

brightnessctl --restore

run_hook post &
