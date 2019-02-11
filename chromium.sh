#!/bin/sh
#tgg-script to open prism website

export DISPLAY=:0.0 #displays on current screen
unclutter & #code to remove mouse from display

##########################################################
### Removing any crash displays if Chromium has issues ###
##########################################################

sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/pi/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/pi/.config/chromium/Default/Preferences

#################################
### Running Chromium with URL ###
#################################

/usr/bin/chromium-browser -kiosk *REACTED*
