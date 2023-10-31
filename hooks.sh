#!/usr/bin/env zsh

source ~/zsh-autosuggestions/zsh-autosuggestions.zsh

# homebrew
if [ -d /opt/homebrew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# aws completions
if [ -f /usr/local/bin/aws_completer ]; then
  complete -C '/usr/local/bin/aws_completer' aws
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
