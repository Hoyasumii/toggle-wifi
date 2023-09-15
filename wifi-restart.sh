#!/bin/bash

if nmcli -t -f WIFI g | grep -q "enabled"; then
	nmcli radio wifi off
	nmcli radio wifi on
else
	nmcli radio wifi on
	nmcli radio wifi off
fi
