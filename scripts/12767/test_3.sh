#!/bin/sh


filename='file_GPS.txt'
n=1
index=0

while read line; do
# reading each line and write in to file
echo "Line No. $n : $line"


	array[$index]="$line"
    index=$(($index+1))

n=$((n+1))
done < $filename
minuts=$(((n*2)/60))
sleep 1s
clear
echo "Кординаты загруженны"

echo "Время прохождения маршрута $minuts минут(ы)"
echo "Let's GO"

sleep 4s
clear


n=0
y=0
for str in ${array[@]}; do # read array and go loop
	
adb shell am broadcast -a ua.org.jeff.mockgps.ACTION_LOCATION --es location \"$str\"
	echo "$n: ${array[$a]}"
	n=$((n+2))
	a=$((n%10))
	if [ $a -eq $y ]
	then
		echo "Touch screen"
		adb shell input tap 700 500
	fi
done


