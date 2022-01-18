#!/bin/sh


echo "Введите количество секунд"
read n


echo "+++"
for (( i=1; i < ($n / 2) +1; i++ ))
do




gps_device=$(adb shell dumpsys location |grep -A1 'Last Known Locations:'|tail -n 1|awk '{print $3}') #читаем GPS девайса
echo "\"$gps_device\"" >> file_GPS.txt

echo -ne "Ваш GPS \"$gps_device\" $n секунд на этой кординате $i \r"




done



echo "OK----------------------------------------------------------------------------------------"
sleep 1s