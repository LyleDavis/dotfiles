#!/usr/bin/env zsh

source ~/zsh-autosuggestions/zsh-autosuggestions.zsh

# ruby
if [ -d /opt/homebrew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  type -P rbenv &> /dev/null && eval "$(rbenv init - zsh)"
else
  if [ -d ~/.rbenv ]; then
    eval "$(~/.rbenv/bin/rbenv init - zsh)"
  fi
fi

# go
if [ -d "/usr/local/go" ]; then
  export PATH=$PATH:/usr/local/go/bin
  export GOPATH=$HOME/go
  export PATH=$PATH:$GOPATH/bin
fi

# node
if [ -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi
