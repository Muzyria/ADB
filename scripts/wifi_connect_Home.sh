#!/bin/bash

adb shell am start -a android.settings.WIFI_SETTINGS

sleep 1
echo "Select WI-FI"
#adb shell input tap 500 250 # предедущие оси
adb shell input tap 500 250 #OS 2.9.12

sleep 0.1
echo 'Enter password'
adb shell input text "42248842"

echo "Connect button"
adb shell input keyevent 66

sleep 2
echo "Go PLAY GOLF"
adb shell input keyevent 4

echo "Finished"
sleep 3