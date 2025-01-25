feh --bg-fill ~/Pictures/something.jpg
picom -b --experimental-backends &
nm-applet &
trayer --edge top --align right --widthtype request --padding 6 --SetDockType true --SetPartialStrut true --expand true --monitor 1 --transparent true --alpha 0 --tint 0x282c34 --height 22 &
exec dwm
