#
# ~/.bashrc
#

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# externally defined aliases
source "$XDG_CONFIG_HOME/aliases"

# prompt
PS1='[\u@\h \W]\$ '
