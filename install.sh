#!/usr/bin/env bash

set -e

touch ~/.credentials.sh

rm -rf ~/.vim > /dev/null 2>&1
echo "removed ~/.vim"
rm -rf ~/.bashrc > /dev/null 2>&1
echo "removed ~/.bashrc"
rm -rf ~/.tmux.conf > /dev/null 2>&1
echo "removed ~/.tmux.conf"
rm -rf ~/.gitconfig > /dev/null 2>&1
echo "removed ~/.gitconfig"
rm -rf ~/.gitignore > /dev/null 2>&1
echo "removed ~/.gitignore"

ln -sf ~/dotfiles/.vim ~/.vim
echo "symlinked .vim"
ln -sf ~/dotfiles/.bashrc ~/.bashrc
echo "symlinked .bashrc"
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
echo "symlinked .tmux.conf"
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
echo "symlinked .gitconfig"
ln -sf ~/dotfiles/.gitignore ~/.gitignore
echo "symlinked .gitignore"