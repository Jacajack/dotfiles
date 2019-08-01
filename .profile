#!/bin/bash
# This script runs on login.

# Add ~/.local/bin to PATH
export PATH="$PATH:$HOME/.local/bin"

# Default programs
export TERMINAL=best-terminal
export BROWSER=firefox
export FILE_BROWSER=$TERMINAL -e mc

# Important directories
export DOWNLOADS_DIR="$HOME/dl"
export DOCUMENTS_DIR="$HOME/doc"
export IMAGES_DIR="$HOME/img"
export VIDEOS_DIR="$HOME/vid"
export PUBLIC_DIR="$HOME/pub"
export MUSIC_DIR="$HOME/music"
export SCREENSHOT_DIR="$IMAGES_DIR/ss"

# Wallpapers directory and terminal opacity
export TERMINAL_OPACITY=85
export WALLPAPERS="$HOME/.wallpapers"

# Read .bashrc
[ -f "$HOME/.bashrc" ] && source "$HOME/.bashrc"

# Run spotifyd if it's installed
[ -x "$(command -v spotifyd)" ] && spotifyd &

# Start graphical server
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 > /dev/null && exec startx

