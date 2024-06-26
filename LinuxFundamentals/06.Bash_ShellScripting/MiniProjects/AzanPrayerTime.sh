#!/usr/bin/bash

# Get current date
DATE=$(date +%Y-%m-%d)

# Get prayer times from aladhan.com API with IPv4, follow redirects, and verbose output for debugging
PRAYER_TIMES=$(curl -s -L -4 "http://api.aladhan.com/v1/timingsByCity?city=Alexandria&country=Egypt&method=2&date=$DATE")

# Extract prayer times using jq (you need to have jq installed)
FAJR=$(echo $PRAYER_TIMES | jq -r '.data.timings.Fajr')
DHUHR=$(echo $PRAYER_TIMES | jq -r '.data.timings.Dhuhr')
ASR=$(echo $PRAYER_TIMES | jq -r '.data.timings.Asr')
MAGHRIB=$(echo $PRAYER_TIMES | jq -r '.data.timings.Maghrib')
ISHA=$(echo $PRAYER_TIMES | jq -r '.data.timings.Isha')

# Print the extracted prayer times
echo "Fajr: $FAJR"
echo "Dhuhr: $DHUHR"
echo "Asr: $ASR"
echo "Maghrib: $MAGHRIB"
echo "Isha: $ISHA"

# Path to the Azan audio file (replace with your actual path)
Azan_FILE="$PWD/azan.mp3"
echo "$Azan_FILE"
mpg123 "$Azan_FILE"

# # Schedule Azan using at command
# echo "$Azan_FILE" | at $FAJR
# echo "$Azan_FILE" | at $DHUHR
# echo "$Azan_FILE" | at $ASR
# echo "$Azan_FILE" | at $MAGHRIB
# echo "$Azan_FILE" | at $ISHA