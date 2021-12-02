#!/bin/bash

echo "Введите количество перезагрузок"
read n
echo "Сейчас будет  $n перезагрузок"
sleep 2s

for (( i=1; i < $n +1; i++ ))
do

date +"Перезагрузка = $i в %H:%M"
sleep 5s
date +"Reboot $i at %H:%M" >> file.txt
adb shell dumpsys battery | grep level
adb shell dumpsys battery | grep level >> file.txt
adb shell reboot

sleep 2m  
echo "Еще 30 секунд"
echo " "
sleep 30s
done

echo "Complite $i"
sleep 3
