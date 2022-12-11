#!/usr/bin/env bash

shopt -q autocd cdspell checkjobs checkwinsize cmdhist dirspell
bind 'set completion-ignore-case on'
# get gpg password for commit signing from command line
export GPG_TTY=$(tty)