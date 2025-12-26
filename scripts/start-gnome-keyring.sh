#!/bin/bash

# Start gnome-keyring-daemon and export environment variables
eval $(gnome-keyring-daemon --start --components=secrets,ssh,pkcs11)
export SSH_AUTH_SOCK
export GNOME_KEYRING_CONTROL
export GNOME_KEYRING_PID

# Update D-Bus environment
dbus-update-activation-environment --systemd SSH_AUTH_SOCK GNOME_KEYRING_CONTROL GNOME_KEYRING_PID
