#!/usr/bin/env zsh

# 1password plugins for providing some credentials like gh pat
source ~/.config/op/plugins.sh

export ZSH_AUTOSUGGEST_STRATEGY=completion
source ~/zsh-autosuggestions/zsh-autosuggestions.zsh

# homebrew
if [ -d /opt/homebrew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"

  export FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi


# ruby
if [ -d ~/.rbenv ]; then
  eval "$(~/.rbenv/bin/rbenv init - zsh)"
fi

# node
if [ -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi
