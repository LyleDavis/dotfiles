#!/usr/bin/env bash

PANE_CURRENT_PATH="$1"
PANE_CURRENT_CMD="$2"
DOTFILES_BASE_PATH="${DOTFILES_BASE_PATH:-$HOME/dotfiles}"
GSS_BIN="$DOTFILES_BASE_PATH/bin/git-status-summary"

# if we don't have our gss script for whatever reason, exit
# ../bin/git-status-summary
if [[ -x "$GSS_BIN" ]]; then
    :
else
    exit
fi

# if we're currently in neovim, let that deal with the git status via lualine etc
if [[ "$PANE_CURRENT_CMD" == "nvim" ]]; then
  exit
fi

cd "$PANE_CURRENT_PATH"
s="$($GSS_BIN)"

# if gss didn't output anything just exit - nothing to display
if [ -z "$s" ]; then
  exit
fi

printf "#[bg=default,fg=white] $s"
