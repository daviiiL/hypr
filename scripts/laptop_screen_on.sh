hyprctl keyword monitor eDP-1, enable

sleep 0.1

powerprofilesctl set balanced

sleep 0.1

notify-send -a "System Notification" "Mobile Mode Enabled"
