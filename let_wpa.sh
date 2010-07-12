#!/bin/bash

SSID=$1
PASS=$2

mv /etc/wpa_supplicant.conf /etc/wpa_supplicant.conf.original

wpa_passphrase myssid mypassphrase > /etc/wpa_supplicant.conf

ifconfig wlan0 up

iwconfig wlan0 essid ${SSID}

wpa_supplicant -B -Dwext -i wlan0 -c /etc/wpa_supplicant.conf
dhcpcd wlan0
ifconfig wlan0
