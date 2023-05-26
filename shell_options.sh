#!/usr/bin/env zsh

# shopt -q autocd cdspell checkjobs checkwinsize cmdhist dirspell
# bind 'set completion-ignore-case on'

# export PATH=$PATH:/usr/local/go/bin
# export GOPATH=$HOME/go
# export PATH=$PATH:$GOPATH/bin

setopt ALWAYS_TO_END
setopt AUTO_PARAM_SLASH

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

# get gpg password for commit signing from command line
export GPG_TTY=$TTY
