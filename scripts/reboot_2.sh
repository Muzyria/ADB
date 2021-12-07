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

sleep 30
echo -ne '#####                     (20%)\r'
sleep 30
echo -ne '##########                (40%)\r'
sleep 30
echo -ne '###############           (60%)\r'
sleep 30
echo -ne '####################      (80%)\r'
sleep 30
echo -ne '######################### (100%)\r'
echo -ne '\n'
echo ""
sleep 3s
done

echo "Complite $i"
sleep 3
