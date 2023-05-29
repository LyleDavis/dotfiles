#!/usr/bin/env zsh

# shopt -q autocd cdspell checkjobs checkwinsize cmdhist dirspell
# bind 'set completion-ignore-case on'

setopt ALWAYS_TO_END
setopt AUTO_PARAM_SLASH

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

# get gpg password for commit signing from command line
export GPG_TTY=$TTY
