#!/bin/sh

color="#88c0d0"

#current_brightness="$(cat /sys/class/leds/dell::kbd_backlight/brightness)"
#max_brightness="$(cat /sys/class/leds/dell::kbd_backlight/max_brightness)"
#percentage=$(awk "{print int((${current_brightness}/${max_brightness})*100)}")

percentage=$(light -s sysfs/leds/dell::kbd_backlight | awk '{print int($1)}')

echo "%{F$color} %{F-} $percentage%"
