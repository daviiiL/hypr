#!/usr/bin/env bash

XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
CONFIG_DIR="$XDG_CONFIG_HOME/ags"

switch() {
	imgpath=$1
	if [ "$imgpath" == '' ]; then
		echo 'Aborted'
		exit 0
	fi

	swww img "$imgpath" --transition-step 100 --transition-fps 120 \
	 --transition-duration 2 \

  matugen image $imgpath -t scheme-tonal-spot
  kill -SIGUSR1 $(pidof kitty)
}

if [ "$1" == "--noswitch" ]; then
	imgpath=$(swww query | awk -F 'image: ' '{print $2}')
	# imgpath=$(ags run-js 'wallpaper.get(0)')
elif [[ "$1" ]]; then
	switch "$1"
  # generate_color "$1"
else
	# Select and set image (hyprland)

    cd "$(xdg-user-dir PICTURES)" || return 1
	switch "$(yad --width 1200 --height 800 --file --add-preview --large-preview --title='Choose wallpaper')"
fi

