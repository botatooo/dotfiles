#!/bin/sh

function isHDMIConnected {
	! xrandr | grep "^HDMI" | grep disconnected
}

if isHDMIConnected; then
mons -e right
else
mons -o
fi

feh --bg-scale ~/wallpapers/nikocropnoartifacts.png ~/wallpapers/MilkyWay.png
