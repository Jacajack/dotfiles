#!/bin/bash
# This script runs on login.

# Add ~/.local/bin to PATH
export PATH="$PATH:$HOME/.local/bin"

# Default programs
export TERMINAL=xterm
export BROWSER=firefox

# Wallpapers directory
export WALLPAPERS="$HOME/.wallpapers"

# Read .bashrc
[ -f "$HOME/.bashrc" ] && source "$HOME/.bashrc"

# Start graphical server
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 > /dev/null && exec startx

