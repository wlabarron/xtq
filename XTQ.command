#!/bin/bash

# Andrew Barron - https://awmb.uk
# https://github.com/wlabarron/xtq
# MIT Licence

clear
echo -en "\033]0; XTQ \007"

printf "Welcome to XTQ: X32 to QLab.
 This tool forwards X32 status change OSC messages to QLab running on this 
 machine. You can use the forwarded messages as triggers to control QLab - 
 for example, to add a Go button to the Assign section of the desk.

 This program probably won't warn you of any issues setting up the connection 
 between the desk and QLab. Test your buttons before every show.
 

Type the IP address or hostname of your X32 console then press the return key:
  (you can find this on the desk under Setup > Network)
"

read -p "> " X32_IP

printf "

 In your QLab Workspace Settings, under Network > OSC Access, enable 
 Control without passcode. Then, under Controls > OSC, for each command you
 want to use, press Capture then the button on X32 you want to use for that 
 action. The best choice is usually MIDI actions in the Assign section of 
 the desk. You only need to do this once in each QLab workspace.

Now connecting to X32 and mirroring all OSC actions to QLab...
 (close this window or press Ctrl+C to stop)"

sleep 1
 
while true; do echo "/xremote"; sleep 8; done | nc -u $X32_IP 10023 | nc -u 127.0.0.1 53535