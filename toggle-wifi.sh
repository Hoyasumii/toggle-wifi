#!/bin/bash

if nmcli -t -f WIFI g | grep -q "enabled"; then
    nmcli radio wifi off
    notify-send "Wi-Fi desativado"
else
    nmcli radio wifi on
    notify-send "Wi-Fi ativado"
fi

