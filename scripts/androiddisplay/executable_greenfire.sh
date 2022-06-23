#!/bin/sh

#sudo insmod ~/repos/vkms/vkms.ko enable_cursor=yes enable_overlay=yes enable_writeback=yes xres=1280 yres=800

device="00B20606517504EQ"

code=""

adb -s $device wait-for-device shell 'while [[ -z $(getprop sys.boot_completed) ]]; do sleep 1; done'

adb -s $device shell input keyevent 4 #back to wake up screen

adb -s $device shell input touchscreen swipe 930 780 930 80 #swipe up to unlock

adb -s $device reverse --remove-all
adb -s $device reverse tcp:1701 tcp:1701
adb -s $device reverse tcp:1702 tcp:1702

adb -s $device shell am start -n com.amazon.cloud9/.browsing.BrowserActivity

sleep 1

adb -s $device shell input keyevent 97
adb -s $device shell input keyevent 97

adb -s $device shell am start -n com.amazon.cloud9/.browsing.BrowserActivity -d "http://localhost:1701/?access_code=vPsraF2GnNSuCZFC6uJKaeMmP7eedbPnKqKx6K4LsLKZqz2kwuV6aqRAZcdWJ6ZdiVdgD4eXxDKz5jKUdy4nMDvhucMvvHhHCqoKXtgb5EiXHxEFj"

sleep 1

adb -s $device shell settings put global policy_control immersive.full=\* # undo with adb shell settings put global policy_control immersive.full=0

adb -s $device shell input tap 200 100
adb -s $device shell input text $(<./page.js)
adb -s $device shell input keyevent 66

adb -s $device shell settings put global policy_control immersive.full=0 # no idea why this makes fullscreen work properly but it does
