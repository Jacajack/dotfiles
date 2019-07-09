#!/bin/sh

# Load .Xresources for the first time and reload each time the file is modified
# If entr is not installed, this should still work, but the file won't be updated
XRESOURCES="$HOME/.Xresources"
if [[ -f "$XRESOURCES" ]]; then	
	xrdb -merge -I$HOME "$XRESOURCES"
	(echo "$XRESOURCES" | entr -p xrdb -merge -I$HOME "$XRESOURCES" ) &
fi

# Run xcompmgr
xcompmgr &

exec i3 
