#!/usr/bin/env bash

shopt -q autocd cdspell checkjobs checkwinsize cmdhist dirspell
bind 'set completion-ignore-case on'

export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# get gpg password for commit signing from command line
export GPG_TTY=$(tty)
