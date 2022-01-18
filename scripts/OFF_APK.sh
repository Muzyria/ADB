#!/bin/bash


echo "Закрываем приложение"
adb shell am force-stop com.l1inc.yamatrack3d
#sleep 1s

echo "Выкидываем приложение"
adb shell input keyevent KEYCODE_APP_SWITCH

adb shell input keyevent DEL

echo "Приложение закрыто"
