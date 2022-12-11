#!/usr/bin/env bash

function for_each_gemfile() {
  cmd="cd '{}' && pwd && $1"
  find . -type f -name Gemfile | xargs dirname | xargs -I {} bash -c "$cmd"
}

function use_env() {
  export "$(grep -Ev '^#' "$1" | xargs)"
}

function from_sage_gemserver() {
  gem_name=$1
  gem_version=$2
  gem install --source=https://$BUNDLE_SAGEONEGEMS__JFROG__IO@$SAGE_GEM_REPO $gem_name:$gem_version
}