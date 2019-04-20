#! /bin/sh
set -e

cd "$XDG_DATA_HOME/pybase16"

# inject color scheme into config files
pybase16 inject -s "schemes/$1.yaml" \
         -f "$HOME/.emacs.d/init.org" \
         -f "$XDG_CONFIG_HOME/termite/config"

# tangle Emacs' init.org -> init.el
emacs --batch --eval "(progn
                        (require 'org)
                        (setq vc-follow-symlinks nil)
                        (org-babel-tangle-file
                         \"/home/mike/.emacs.d/init.org\"))"
