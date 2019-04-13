# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' format '%F{8}Completing %d:%f'
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' matcher-list '+' '+m:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+r:|[._-]=** r:|=**' '+l:|=* r:|=*'
zstyle :compinstall filename '/home/mike/.zsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt appendhistory extendedglob
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install


# externally defined aliases and functions
source "$XDG_CONFIG_HOME/aliases"
source "$XDG_CONFIG_HOME/functions"

# separate command completions by group
zstyle ':completion:*' group-name ''

# order in which to show command completions
# type ^Xh in zsh prompt to see available tags
zstyle ':completion:*:*:-command-:*:*' group-order \
       reserved-words aliases builtins functions commands

# prompt settings
autoload -Uz promptinit
promptinit
prompt suse

# zsh help command
autoload -Uz run-help
unalias run-help
alias help=run-help

# prevent redirection from overwriting files
# use >| operator to force overwrite
setopt no_clobber

# make completion menu navigable with arrow keys
zstyle ':completion:*' menu select

# cd pushes directories to the stack like pushd
# (because I never remember to use pushd)
setopt auto_pushd

# match hidden files with asterisk wildcard
setopt glob_dots
