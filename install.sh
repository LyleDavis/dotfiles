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