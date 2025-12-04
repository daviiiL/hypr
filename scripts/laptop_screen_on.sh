hyprctl keyword monitor eDP-1, enable

sleep 0.1

powerprofilesctl set balanced

sleep 0.1

notify-send -a "System Notification" "Dock Mode Disabled" "The built-in display is turned on."
