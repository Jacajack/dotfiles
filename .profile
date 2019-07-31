#!/bin/bash
# This script runs on login.

# Add ~/.local/bin to PATH
export PATH="$PATH:$HOME/.local/bin"

# Default programs
export TERMINAL=best-terminal
export BROWSER=firefox

# Wallpapers directory and terminal opacity
export TERMINAL_OPACITY=85
export WALLPAPERS="$HOME/.wallpapers"

# Read .bashrc
[ -f "$HOME/.bashrc" ] && source "$HOME/.bashrc"

# Run spotifyd if it's installed
[ -x "$(command -v spotifyd)" ] && spotifyd &

# Start graphical server
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 > /dev/null && exec startx

