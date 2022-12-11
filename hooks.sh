#!/usr/bin/env bash

[ -d "/opt/homebrew" ] && eval "$(/opt/homebrew/bin/brew shellenv)"
type -P rbenv &> /dev/null && eval "$(rbenv init - bash)"