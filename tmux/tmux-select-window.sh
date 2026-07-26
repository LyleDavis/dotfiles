#!/usr/bin/env bash

if ! command -v fzf >/dev/null 2>&1; then
    tmux display-message "tmux-select-window: fzf not found in PATH"
    exit 0
fi

selected_window="$(tmux list-windows -F "#{window_index} #{window_name}" | \
    fzf --ansi --layout=reverse --preview "tmux capture-pane -pC -t {1} -S -20" --preview-window=right:80%:wrap | \
    awk '{print $1}')"

if [[ -n "$selected_window" ]]; then
    tmux select-window -t "$selected_window"
fi
