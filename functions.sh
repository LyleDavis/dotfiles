#!/usr/bin/env zsh

function for_each_gemfile() {
  cmd="cd '{}' && pwd && $1"
  find . -type f -name Gemfile | xargs dirname | xargs -I {} bash -c "$cmd"
}

function use_env() {
  export "$(grep -Ev '^#' "$1" | xargs)"
}

function aws_login() {
  aws sso login && ecr_login
}

function ecr_login() {
  (
  if [[ -n "$1" ]]; then
    echo "ECR login with profile: $1"
    export AWS_PROFILE="$1"
  fi
  region="$(aws configure get region)"
  account_id="$(aws configure get sso_account_id)"
  aws ecr get-login-password --region "$region" | docker login --username AWS --password-stdin "$account_id".dkr.ecr."$region".amazonaws.com
  )
}

