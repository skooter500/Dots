# .pam_environment should be used instead of .profile where possible.
# This is because .pam_environment gets loaded earlier. Unfortunately,
# .pam_environment's syntax sucks. This file is for commands I can't
# express in .pam_environment.

# less
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
