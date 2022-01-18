#!/bin/bash
echo "Cart Barn Sleep"
adb shell am broadcast -a com.l1inc.yamatrack3d.action.powermanagement.cart_barn_sleep
sleep 3s