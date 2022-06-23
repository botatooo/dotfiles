#!/bin/bash 
trap 'trap - INT; kill -s HUP -- -$$' INT
(
while true; do
xdotool key 0xff0d
sleep 0.2s
done
) &
while true; do
xdotool keydown 0x005c
sleep 1s
xdotool keyup 0x005c
sleep 0.05s
done