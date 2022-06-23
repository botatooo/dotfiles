#!/bin/bash 
trap 'trap - INT; kill -s HUP -- -$$' INT
sleep 10
while true; do
xdotool keydown 0x0032
sleep 0.5s
xdotool keyup 0x0032
sleep 15s
done