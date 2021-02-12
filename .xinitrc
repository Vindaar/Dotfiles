# run xsettingsd
xsettingsd &

# set correct keyboard layout
loadkeys neo

# set keyboard layout in X
setxkbmap de neo

pulseaudio --start
feh --bg-scale /home/basti/Pictures/spacex_starship_sn9_sn10.jpg

exec /home/basti/src/nim/nimdow/nimdow
