#!/bin/bash
#
# .xsession
#

for _ in /etc/X11/xinit/xinitrc.d/*; do
  [[ -f $_ ]] && . "$_"
done

# systemctl --user import-environment 'DISPLAY'
# systemctl --user start xorg.target

# fonts
xset +dpms +fp /usr/share/fonts/local,/usr/share/fonts/artwiz-fonts

# background
# feh --bg-scale "$HOME/var/pic/wallpaper/current.png"

# screensaver
# xscreensaver -no-splash &

exec /usr/bin/i3
