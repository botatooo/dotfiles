#!/bin/sh

function isHDMIConnected {
	! xrandr | grep "^HDMI" | grep disconnected
}

if isHDMIConnected; then
mons -e right
else
mons -o
fi

feh --bg-scale /usr/share/wallpapers/MilkyWay/contents/images/5120x2880.png
