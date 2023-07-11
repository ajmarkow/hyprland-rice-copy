#!/usr/bin/env bash



source ~/.config/hypr/lib.sh



run_hook pre &

killall flameshot
pkill flameshot

swww init

set_wallpaper ~/.config/hypr/wallpaper.png

~/.config/hypr/waybar/start
~/.config/hypr/swaync/start
~/.config/hypr/eww/start

nm-applet &
blueman-applet &

lxsession &

brightnessctl --restore

eval "sleep 2; hyprctl reload" &

run_hook post &
