#!/usr/bin/env bash



source ~/.config/hypr/lib.sh



run_hook pre &

[[ -d ~/.hyprland_rice ]] || mkdir ~/.hyprland_rice

[[ -f ~/.hyprland_rice/themes.txt ]] || touch ~/.hyprland_rice/themes.txt

rm -rf ~/.cache/swww > /dev/null 2>&1

swww init

swww img ~/.config/hypr/screen_pics/starting_rice.png

[[ -f ~/.cache/hyprland_rice/theme_refreshed ]] || ~/.config/hypr/manage/refresh_theme.sh

set_wallpaper ~/.cache/hyprland_rice/theme/wallpaper.png

~/.config/hypr/waybar/start
~/.config/hypr/swaync/start
~/.config/hypr/eww/start

nm-applet &
blueman-applet &

lxsession &

brightnessctl --restore

eval "sleep 2; hyprctl reload" &

eval "sleep 0.5; killall flameshot; pkill flameshot" &
eval "sleep 1; killall flameshot; pkill flameshot" &
eval "sleep 2; killall flameshot; pkill flameshot" &

run_hook post &
