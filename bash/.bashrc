#
# ~/.bashrc
#

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# externally defined aliases and functions
source "$XDG_CONFIG_HOME/aliases"
source "$XDG_CONFIG_HOME/functions"

# prevent "a.txt > b.txt" from overwriting
# use "a.txt >| b.txt" to force overwite
set -o noclobber

# prompt
PS1='[\u@\h \W]\$ '
