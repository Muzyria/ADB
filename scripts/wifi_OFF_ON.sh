#!/bin/bash

echo "WI-FI OFF-ON"
adb shell am start -a android.intent.action.MAIN -n com.android.settings/.wifi.WifiSettings

adb shell input tap 800 100 

adb shell input keyevent 4

sleep 5s
echo "Проверка статуса"
adb shell dumpsys wifi | grep "Wi-Fi"
sleep 5s
