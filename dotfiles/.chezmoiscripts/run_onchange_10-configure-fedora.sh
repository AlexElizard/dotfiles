#!/usr/bin/bash

# Disable auto suspend on login screen
# https://discussion.fedoraproject.org/t/gnome-suspends-after-15-minutes-of-user-inactivity-even-on-ac-power/79801
sudo tee /etc/dconf/db/gdm.d/01-customize-suspend <<EOF
[org/gnome/settings-daemon/plugins/power]
sleep-inactive-ac-timeout=0
sleep-inactive-battery-timeout=0
EOF
sudo dconf update
