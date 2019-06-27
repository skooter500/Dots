# I've opted to move away from .pam_environment for portability
# reasons. The impetus for this is Debian (or in my case Raspbian)
# choosing not to enable .pam_environment. Plus, the pam_env syntax
# annoys me.

# additions to path
export PATH="${PATH}:${HOME}/bin:${HOME}/.local/bin"

# xdg base directories
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"

# zsh
export ZDOTDIR="${HOME}/.zsh"

# default applications
export BROWSER='firefox'
export EDITOR='emacs -nw'
export PAGER='less'
export VISUAL='emacs'

# enable touchscreen scrolling in firefox
export MOZ_USE_XINPUT2=1

# window opacity, for use with compton
export OPACITY=0.85

# less
export LESS='-R'
export LESSOPEN='| /usr/bin/src-hilite-lesspipe.sh %s'
export LESSHISTFILE='/dev/null'
# colourise text effects (thus colourising man pages)
export LESS_TERMCAP_mb=$'\e[1;31m'  # start blink       -> bold, red
export LESS_TERMCAP_md=$'\e[1;32m'  # start bold        -> bold, green
export LESS_TERMCAP_me=$'\e[0m'     # end all effects
export LESS_TERMCAP_so=$'\e[1;33m'  # start standout    -> bold, yellow
export LESS_TERMCAP_se=$'\e[0m'     # end standout
export LESS_TERMCAP_us=$'\e[4;36m'  # start underline   -> underline, cyan
export LESS_TERMCAP_ue=$'\e[0m'     # end underline
# underline -> cyan is a tradition from the CGA days apparently and is
# performed by default in the virtual console
