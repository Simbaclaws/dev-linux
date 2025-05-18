#!/bin/sh

[ -z "$DBUS_SESSION_BUS_ADDRESS" ] && eval $(/usr/bin/dbus-launch --exit-with-session --sh-syntax)
dbus-update-activation-environment --verbose --all
eval $(/usr/bin/gnome-keyring-daemon --start)
export SSH_AUTH_SOCK
export GPG_AGENT_INFO
export GNOME_KEYRING_CONTROL
export GNOME_KEYRING_PID
/usr/libexec/polkit-mate-authentication-agent-1 &
source ~/.xprofile
exec /usr/local/bin/dwm 
