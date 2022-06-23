#!/bin/sh

device="00B20606517504EQ"

adb -s $device get-state 1>/dev/null 2>&1 && echo 'device attached' || exit 1

adb -s $device wait-for-device shell 'while [[ -z $(getprop sys.boot_completed) ]]; do sleep 1; done'

adb -s $device shell input keyevent 26 #power to sleep screen
