#!/usr/bin/env bash

if [ -d /opt/homebrew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  type -P rbenv &> /dev/null && eval "$(rbenv init - bash)"
else
  if [ -d ~/.rbenv ]; then
    eval "$(~/.rbenv/bin/rbenv init - bash)"
  fi
fi

[ -d "/usr/local/go" ] && export PATH=$PATH:/usr/local/go/bin

if [ -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

#[ -d "/opt/homebrew" ] && eval "$(/opt/homebrew/bin/brew shellenv)"
# if homebrew exists, assume rbenv is already in path
#[ -d "/opt/homebrew" ] && type -P rbenv &> /dev/null && eval "$(rbenv init - bash)"
# if homebrew does not exist and rbenv has been cloned then use that to initialise
#[ ! -d "/opt/homebrew" ] && [ -d "~/.rbenv" ] && eval "$(~/.rbenv/bin/rbenv init - bash)"
