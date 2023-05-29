if [ -d "$HOME/.cargo" ]; then
  . "$HOME/.cargo/env"
fi

if [ -d "/usr/local/go" ]; then
  . "$HOME/golang_vars.sh"
fi
