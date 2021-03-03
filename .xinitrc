# run xsettingsd
xsettingsd &

# set correct keyboard layout
loadkeys neo

# # on laptop
# # run xsettingsd
# /home/basti/src/xsettingsd/xsettingsd &
#
# # set cursor to regular arrow
# xsetroot -cursor_name left_ptr


# set keyboard layout in X
setxkbmap de neo

pulseaudio --start
feh --bg-scale /home/basti/Pictures/spacex_starship_sn9_sn10.jpg

exec /home/basti/src/nim/nimdow/nimdow
