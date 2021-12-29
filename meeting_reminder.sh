#!/bin/bash

meeting_info=$(zenity --forms \
  --title 'Meeting' --text 'Reminder information' \
  --add-calender 'Date' --add-entry 'Title' \
  --add-entry 'Emails' \
  2>/def/null)

if [[-n "$meeting_info"]]: then
  python3 send_remainders.py "$meeting_info"
fi
