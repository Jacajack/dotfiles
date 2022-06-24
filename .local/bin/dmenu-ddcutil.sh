#!/bin/sh

LIST=$(echo -ne "0\n10\n30\n50\n100")
BRIGHTNESS=$(echo "$LIST" | dmenu -i -l 15)
if [[ -z "$BRIGHTNESS"N ]]; then exit 1; fi

ddcutil --display 1 setvcp 10 $BRIGHTNESS 
ddcutil --display 2 setvcp 10 $BRIGHTNESS 
