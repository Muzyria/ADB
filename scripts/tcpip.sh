#!/bin/bash
echo "Ваш IP"
echo ""
ip_device=$(adb shell ip addr show wlan0 | grep "inet " | cut -d' ' -f6 |  cut -d"/" -f1) #читаем IP девайса
echo "$ip_device"

sleep 3s
adb tcpip 5555 #Прописываем порт
echo ""

echo "Сейчас будет произведено подключение к $ip_device:5555"
echo ""
adb connect $ip_device:5555 #Подключаем девайс
sleep 3s
echo ""
echo "Проверка результата подключения"
echo ""
adb devices
echo ""
echo "Можете отключить USB"

sleep 7s
