# run xsettingsd
/home/basti/src/xsettingsd/xsettingsd &

# set cursor to regular arrow
xsetroot -cursor_name left_ptr

# set correct keyboard layout
loadkeys neo

# set keyboard layout in X
setxkbmap de neo

pulseaudio --start
feh --bg-scale /home/basti/Pictures/spacex_starship_sn9_sn10.jpg

# decrease the key delay / increase rate of key presses
xset r rate 250 60

# exec /home/basti/src/nim/nimdow/bin/nimdow --config /home/basti/.config/nimdow/config.toml
exec dbus-launch --exit-with-session /home/basti/src/nim/nimdow/nimdow
