#!/bin/bash

CONNECTIVITY="init"

while [ "$CONNECTIVITY" != "full" ]; do
    echo "Turning Wifi off..."
    nmcli n off
    sleep 1
    echo "Turning WiFi on..."
    nmcli n on
    sleep 10
    echo "Checking if connected..."
    CONNECTIVITY=$(nmcli n connectivity)
done
