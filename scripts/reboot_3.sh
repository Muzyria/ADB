#!/bin/bash

echo "Введите количество перезагрузок"
read n
echo "Сейчас будет  $n перезагрузок"
sleep 2s

for (( i=1; i < $n +1; i++ ))
do

date +"Перезагрузка = $i в %H:%M"
sleep 3s
date +"Reboot $i at %H:%M" >> file.txt
adb shell dumpsys battery | grep level
adb shell dumpsys battery | grep level >> file.txt
adb shell reboot

var1=150 #time in second
while [ $var1 -gt -1 ]
do

echo -ne "осталось $var1 секунд \r"
sleep 1s
var1=$[ $var1 - 1 ]

done
echo -ne "Finished                     "
echo -ne '\n'
echo ""
sleep 3s

done

echo "Finished $i"
sleep 3
#finish +++
