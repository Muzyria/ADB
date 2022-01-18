#!/bin/bash

echo "Проверка статуса Wi-Fi"
adb shell dumpsys wifi | grep "Wi-Fi"

var1=1500 #time in second
while [ $var1 -gt -1 ]
do

stat=$(adb shell dumpsys wifi | grep "Wi-Fi" | cut -d' ' -f3)
echo "$stat"

str="enabled"

if [ "$stat" = "$str" ]
then
	adb shell dumpsys wifi | grep "mNetworkInfo"
	adb shell am start -a android.intent.action.MAIN -n com.android.settings/.wifi.WifiSettings
	adb shell input tap 800 100 
	adb shell input keyevent 4
fi

echo -ne "осталось $var1 итераций\r"

var1=$[ $var1 - 1 ]
done

sleep 3s