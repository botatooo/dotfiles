#!/bin/sh

device="00B20606517504EQ"

adb -s $device get-state 1>/dev/null 2>&1 && echo 'device attached' || exit 1

adb -s $device wait-for-device shell 'while [[ -z $(getprop sys.boot_completed) ]]; do sleep 1; done'

adb -s $device shell input keyevent 4 #back to wake screen

adb -s $device shell input touchscreen swipe 930 780 930 80 #swipe up to unlock

sleep 2

adb -s $device shell settings put global policy_control immersive.full=\* # undo with adb shell settings put global policy_control immersive.full=0

adb -s $device shell input tap 200 100
adb -s $device shell input text $(<./page.js)
adb -s $device shell input keyevent 66

adb -s $device shell settings put global policy_control immersive.full=0 # no idea why this makes fullscreen work properly but it does
