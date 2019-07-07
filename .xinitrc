#!/bin/sh

# Load .Xresources for the first time and reload each time the file is modified
XRESOURCES="$HOME/.Xresources"
if [[ -f "$XRESOURCES" ]]; then
	xrdb -merge -I$HOME "$XRESOURCES"
	echo "$XRESOURCES" | entr -p xrdb -merge -I$HOME "$XRESOURCES" &
fi

exec i3
