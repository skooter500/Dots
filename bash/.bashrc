#
# ~/.bashrc
#

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# externally defined aliases and functions
source "$XDG_CONFIG_HOME/aliases"
source "$XDG_CONFIG_HOME/functions"

# prompt
PS1='[\u@\h \W]\$ '
