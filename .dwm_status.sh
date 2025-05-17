#!/bin/bash

while true; do
    # Get battery percentage
    BATTERY=$(cat /sys/class/power_supply/BAT0/capacity)

    # Get date and time in UK format with 3-letter day of the week
    DATETIME=$(date "+%a %d/%m/%Y | %H:%M")

    # Update the status bar
    xsetroot -name "| BAT: ${BATTERY}% | ${DATETIME} |"
    
    # Adds wpp
    ./.wppr
    # Update every 60 seconds
    sleep 60
done
