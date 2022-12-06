# Aliases

alias stop_all_containers='docker stop $(docker ps -q -a)'
#alias cat='bat'
#alias catp='bat --style=plain'
alias lzd='lazydocker'
alias ll='ls -al'
alias gst='git status'
alias gcm='git commit'
alias dps='docker ps'
alias w='watch'
alias localstack='aws --endpoint-url=http://localhost:4566'
alias bat='batcat'
alias docker-compose='docker compose'

# Functions

function for_each_gemfile() {
  cmd="cd '{}' && pwd && $1"
  find . -type f -name Gemfile | xargs dirname | xargs -I {} bash -c "$cmd"
}

function use_env() {
  export $(egrep -v '^#' $1 | xargs)
}

function from_sage_gemserver() {
  gem_name=$1
  gem_version=$2
  gem install --source=https://$BUNDLE_SAGEONEGEMS__JFROG__IO@$SAGE_GEM_REPO $gem_name:$gem_version
}
