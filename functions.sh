#!/usr/bin/env zsh

function for_each_gemfile() {
  cmd="cd '{}' && pwd && $1"
  find . -type f -name Gemfile | xargs dirname | xargs -I {} bash -c "$cmd"
}

function use_env() {
  export "$(grep -Ev '^#' "$1" | xargs)"
}

function ecr_login() {
  region="$(aws configure get region)"
  account_id="$(aws configure get sso_account_id)"
  aws ecr get-login-password --region "$region" | docker login --username AWS --password-stdin "$account_id".dkr.ecr."$region".amazonaws.com
}

