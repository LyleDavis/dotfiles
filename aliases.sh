#!/usr/bin/env zsh

alias stop_all_containers='docker stop $(docker ps -q -a)'
#alias cat='bat'
#alias catp='bat --style=plain'
alias lzd='lazydocker'
alias ll='ls -al'
alias gst='git status'
alias gcm='git commit'
alias dps='docker ps'
alias w='watch'
alias localstack='aws --endpoint-url=http://localhost:4566'
alias docker-compose='docker compose'