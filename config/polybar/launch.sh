#!/usr/bin/sh

dir="$HOME/.config/polybar"

launch_bar() {
  while pgrep polybar; do killall polybar; done

	if type "xrandr"; then
		for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
			MONITOR=$m polybar --reload main &
		done
	else
		polybar --reload main &
	fi
}

launch_bar

