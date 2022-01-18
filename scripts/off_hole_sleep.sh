#!/bin/bash
echo "Off hole sleep"
adb shell am broadcast -a com.l1inc.yamatrack3d.action.powermanagement.not_on_hole_sleep
sleep 3s