hyprctl keyword monitor eDP-1, disable

sleep 0.1

powerprofilesctl set performance

sleep 0.1

notify-send -a "System Notification" "Docked Mode Enabled" "The internal display is turned off."
