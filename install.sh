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

# symlink to .1password for more standardised access
mkdir -p ~/.1password && ln -s ~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock ~/.1password/agent.sock
