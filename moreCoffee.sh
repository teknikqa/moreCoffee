#!/bin/bash

gconftool-2 --toggle /apps/gnome-screensaver/idle_activation_enabled
SCRVAL=`gconftool-2 -g /apps/gnome-screensaver/idle_activation_enabled`
if $SCRVAL ; then
  SCRVAL="enabled"
else
  SCRVAL="disabled"
fi
notify-send "Screen Saver has been $SCRVAL."
#`gconftool-2 -g /apps/gnome-screensaver/idle_activation_enabled`

exit 0
