#!/bin/bash

adb shell am start -a android.settings.AIRPLANE_MODE_SETTINGS
#adb shell input keyevent 19 ; sleep 0.1; adb shell input keyevent 23; sleep 0.3; adb shell input keyevent 4;

adb shell input tap 500 100 ; adb shell input keyevent 4

echo "ON OFF airplane mode";
sleep 0.3