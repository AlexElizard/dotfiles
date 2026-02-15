#!/usr/bin/bash

# Disable auto suspend for GDM user
# https://discussion.fedoraproject.org/t/gnome-suspends-after-15-minutes-of-user-inactivity-even-on-ac-power/79801
sudo tee /usr/share/glib-2.0/schemas/org.gnome.settings-daemon.plugins.power.gschema.override <<EOF
[org.gnome.settings-daemon.plugins.power]
sleep-inactive-ac-timeout=0
sleep-inactive-battery-timeout=0
EOF
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/
