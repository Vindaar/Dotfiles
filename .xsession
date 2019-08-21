#!/bin/bash

# Load resources
# does not exist for us
# xrdb -merge .Xresources

# Set up an icon tray
# trayer
trayer --edge top --align right --SetDockType true --SetPartialStrut true \
 --expand true --width 10 --transparent true --tint 0x191970 --height 24 &

# Set the background color<
# random background color so far
xsetroot -solid midnightblue

# Fire up apps
# start emacs daemon
emacs --daemon

# xscreensaver -no-splash &
# start xsettingsd for GTK settings
/home/basti/src/xsettingsd/xsettingsd &

# set right menu key as compose key
setxkbmap -option compose:menu

# start nm-applet for network
if [ -x /usr/bin/nm-applet ] ; then
   nm-applet --sm-disable &
fi

# start blueman-applet for bluetooth
if [ -x /usr/bin/blueman-applet ] ; then
    blueman-applet &
fi

# set the PATH variable
source $HOME/.zsh/exports.zsh

# the following taken from
# https://wiki.manjaro.org/index.php/Getting_Window_Managers_to_work_properly
# Without it we get (even more) errors when running chrome, e.g. when plotly
# opens it to show a plot etc.
## Ensure that the D-Bus Communication System is running properly to fix
## File management, authentication, and other essential system processes
if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS"; then
    eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi

exec dbus-launch --exit-with-session xmonad

# OLD .xsession of void linux
#!/bin/sh

#
# ~/.xsession
#
# Executed by xdm/gdm/kdm at login
#

# /bin/bash --login -i ~/.xinitrc
