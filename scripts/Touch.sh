#!/bin/bash

echo "Welcome to loop"

var1=2500 #time in second
while [ $var1 -gt -1 ]
do

adb shell input tap 200 200; adb shell input tap 200 500; adb shell input tap 500 500; adb shell input tap 500 200

adb shell input swipe 100 500 200 500 250; adb shell input swipe 200 500 100 500 250
echo -ne "осталось $var1 итераций\r"
sleep 1s
var1=$[ $var1 - 1 ]

done
