#!/bin/bash

# Disable Ctrl+s and Ctrl+q
stty -ixon

# Autocd
shopt -s autocd

# Infinite history
HISTSIZE=
HISTFILESIZE=

# Aliases for colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'

# ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

# A nice prompt
export PS1="[\[$(tput setaf 1)\]\u@\h\[$(tput setaf 3)\] \W\[$(tput setaf 7)\]]\$ "

# Read wal sequences
[[ -f ~/.cache/wal/sequences ]] && (cat ~/.cache/wal/sequences &)
