#!/usr/bin/env bash

set -e

git submodule update --init --recursive

touch ~/.credentials.sh

function replace() {
  path=$1
  rm -rf ~/"$path" > /dev/null 2>&1
  echo "removed ~/$path"
  ln -sf ~/dotfiles/"$path" ~/"$path"
  echo "symlinked $path"  
}

if [[ "$OSTYPE" == *darwin* ]]; then
  bash macpack.sh
fi

replace ".vim"
replace ".tmux.conf"
replace ".gitconfig"
replace ".gitignore"
replace "powerlevel10k"
replace "zsh-autosuggestions"
replace ".p10k.zsh"
replace ".zshrc"
replace "golang_vars.sh"
replace ".zshenv"
mkdir -p ~/Library/LaunchAgents # this doesn't exist on linux but it doesn't do anything in that case so we may as well have it
replace "Library/LaunchAgents/com.1password.SSH_AUTH_SOCK.plist"
replace ".ssh/config"

# symlink to .1password for more standardised access
if test -f ~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock; then
  mkdir -p ~/.1password && ln -sf ~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock ~/.1password/agent.sock
fi
