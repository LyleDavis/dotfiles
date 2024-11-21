#!/usr/bin/env zsh

# shopt -q autocd cdspell checkjobs checkwinsize cmdhist dirspell
# bind 'set completion-ignore-case on'

setopt ALWAYS_TO_END
setopt AUTO_PARAM_SLASH

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*:complete:*:files' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
# get colours in autocompletion
zstyle ':completion:*' list-colors 'di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit


# get gpg password for commit signing from command line
export GPG_TTY=$TTY
